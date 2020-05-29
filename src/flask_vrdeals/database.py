from flask import current_app
from flask_vrdeals import mysql, Pager

conn = mysql.connect()
cursor = conn.cursor()


def sql_query(sql):
    """
    hosts like pythonanywhere.com will disconnect the mysql connection after 5 minutes inactivity
    so the connection will be restored here when a database query is made
    """
    global conn, cursor
    try:
        cursor.execute(sql)
    except Exception as e:
        print(e)
        conn = mysql.connect()
        cursor = conn.cursor()
        cursor.execute(sql)
    return cursor.fetchall()


def number_of_offers(query):
    """returns the number of available offers which is needed for the pagination"""
    if query:
        sql = f'''
        Select COUNT(*) FROM current_offers
        INNER JOIN articles ON articles.id = current_offers.article_id
        INNER JOIN stores ON stores.id = articles.store_id 
        INNER JOIN category_name ON category_name.id = articles.category_name_id
        INNER JOIN categories ON categories.id = category_name.category_id 
        {query}
        '''
    else:
        sql = f'''Select COUNT(*) FROM current_offers'''
    total = sql_query(sql)[0][0]
    return total


def create_urls(article):
    store_name, article_name, _, _, img_url, website_article_id, url = article
    if "Oculus" in store_name:
        if "section" in url:
            url = url.split("section")[0]
        url += str(website_article_id)
    elif store_name == "Steam":
        img_url = f"https://steamcdn-a.akamaihd.net/steam/apps/{website_article_id}/header.jpg"
        url = f"https://store.steampowered.com/app/{website_article_id}/"
    elif store_name == "Humble Bundle":
        url = f"https://www.humblebundle.com/store/{website_article_id}"
    elif store_name == "Amazon":
        url = f"https://www.amazon.de{website_article_id}"
    elif store_name == "Mediamarkt":
        url = f"https://www.mediamarkt.de{website_article_id}"

    return img_url, url


def offers_from_store(per_page, offset, query):
    """returns all offers for the corresponding store"""
    offers = []
    sql = f'''
    SELECT stores.name, article_name, regular_price, sale_price, img_url, website_article_id, url
    FROM current_offers
    INNER JOIN articles ON articles.id = current_offers.article_id
    INNER JOIN stores ON stores.id = articles.store_id 
    INNER JOIN category_name ON category_name.id = articles.category_name_id
    INNER JOIN categories ON categories.id = category_name.category_id 
    {query}
    Order by stores.id, category_id, date_time DESC
    LIMIT {per_page} OFFSET {offset}
    '''
    for offer in sql_query(sql):
        store_name, article_name, regular_price, sale_price, img_url, website_article_id, url = offer
        img_url, url = create_urls(offer)
        offers.append({
            "store_name": store_name,
            "article_name": article_name[0:40],
            "regular_price": regular_price,
            "sale_price": sale_price,
            "img_url": img_url,
            "url": url
        })
    return offers


def offers_pagination(page, store):
    if store == "Home":
        query = ""
    elif store == "Oculus":
        query = f'''WHERE name LIKE "{store}%"'''
    elif store == "Headsets":
        query = '''WHERE category = "hardware"'''
    elif store == "Accessories":
        query = '''WHERE category = "Accessories"'''
    else:
        query = f'''WHERE name="{store}"'''
    count = number_of_offers(query)
    data = range(count)
    pager = Pager(page, count)
    pages = pager.get_pages()
    skip = (page - 1) * current_app.config['PAGE_SIZE']
    limit = current_app.config['VISIBLE_PAGE_COUNT']
    per_page = current_app.config['PAGE_SIZE']
    data_to_show = data[skip: skip + limit]
    offers = offers_from_store(per_page, skip, query)
    return offers, pages, data_to_show
