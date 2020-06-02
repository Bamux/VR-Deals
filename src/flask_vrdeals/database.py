from flask import current_app
from flask_vrdeals import mysql, Pager


conn = mysql.connect()
cursor = conn.cursor()


def conn_close():
    cursor.close()
    conn.close()


def sql_query(sql):
    global conn, cursor
    if not cursor.connection:
        conn = mysql.connect()
        cursor = conn.cursor()
    try:
        cursor.execute(sql)
    except Exception as e:
        print(e)
        conn_close()
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


def offers_from_store(per_page, offset, query):
    """returns all offers for the corresponding store"""
    offers = []
    sql = f'''
    SELECT stores.name, article_name, regular_price, sale_price, img_url, website_article_id, url, category_name.id
    FROM current_offers
    INNER JOIN articles ON articles.id = current_offers.article_id
    INNER JOIN stores ON stores.id = articles.store_id 
    INNER JOIN category_name ON category_name.id = articles.category_name_id
    INNER JOIN categories ON categories.id = category_name.category_id 
    {query}
    Order by stores.priority, category_id, date_time DESC
    LIMIT {per_page} OFFSET {offset}
    '''
    for offer in sql_query(sql):
        store_name, article_name, regular_price, sale_price, img_url, website_article_id, url, category_name_id = offer
        offers.append({
            "store_name": store_name,
            "article_name": article_name[0:40],
            "regular_price": regular_price,
            "sale_price": sale_price,
            "img_url": img_url,
            "url": website_article_id,
            "url_disqus": f"/disqus/id-{category_name_id}"

        })
    return offers


def hardware_recommendations():
    offers = []
    sql = "SELECT url, img_url, article_name, description FROM hardware"
    for url, img_url, article_name, description in sql_query(sql):
        offers.append({
            "url": url,
            "img_url": img_url,
            "article_name": article_name,
            "description": description,
        })
    conn_close()
    return offers


def disqus(item_id):
    article_name = ""
    query = f'''WHERE category_name.id = {item_id}'''
    offers = offers_from_store(20, 0, query)
    if not offers:
        sql = f"SELECT article_name FROM category_name WHERE id ={item_id}"
        article_name = sql_query(sql)[0][0]
    conn_close()
    return article_name, offers


def disqus_ids():
    sql = "SELECT id FROM category_name"
    ids = sql_query(sql)
    return ids


def offers_pagination(page, store):
    if store == "Home":
        query = ""
    elif store == "Oculus":
        query = f'''WHERE name LIKE "{store}%"'''
    elif store == "Headsets":
        query = '''WHERE category = "hardware"'''
    elif store == "Zubehör":
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
    conn_close()
    return offers, pages, data_to_show
