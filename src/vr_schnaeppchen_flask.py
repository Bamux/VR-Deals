from flask import Flask, render_template
from flask_paginate import Pagination, get_page_args
from flaskext.mysql import MySQL

import settings

app = Flask(__name__)
mysql = MySQL()
app.config['MYSQL_DATABASE_HOST'] = settings.host
app.config['MYSQL_DATABASE_USER'] = settings.user
app.config['MYSQL_DATABASE_PASSWORD'] = settings.passwd
app.config['MYSQL_DATABASE_DB'] = settings.database
app.config['PER_PAGE'] = 20
mysql.init_app(app)
conn = mysql.connect()
cursor = conn.cursor()


def sql_query(sql):
    """
    pythonanywhere.com will disconnect the mysql connection after 5 minutes
    so the connection will be restored here
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


def number_of_offers(store=""):
    if store:
        sql = f'''
        Select COUNT(*) FROM current_offers
        INNER JOIN articles ON articles.id = current_offers.article_id
        INNER JOIN stores ON stores.id = articles.store_id
        WHERE name="{store}" 
        '''
    else:
        sql = f'''Select COUNT(*) FROM current_offers'''
    total = sql_query(sql)[0][0]
    return total


def offers_from_store(per_page, offset, store=""):
    offers = []
    if store:
        store = f'''WHERE name="{store}" '''
    sql = f'''
    SELECT stores.name, article_name, regular_price, sale_price, img_url, website_article_id, url
    FROM current_offers
    INNER JOIN articles ON articles.id = current_offers.article_id
    INNER JOIN stores ON stores.id = articles.store_id {store}
    Order by date_time DESC
    LIMIT {per_page} OFFSET {offset}
    '''
    for offer in sql_query(sql):
        store_name, article_name, regular_price, sale_price, img_url, website_article_id, url = offer
        if "section" in url:
            url = url.split("section")[0]
        url += str(website_article_id)
        offers.append({"store_name": store_name, "article_name": article_name,
                       "regular_price": regular_price, "sale_price": sale_price,
                       "img_url": img_url, "url": url})
    return offers


def content(store=""):
    page, per_page, offset = get_page_args(page_parameter='page',
                                           per_page_parameter='per_page')
    offers = offers_from_store(per_page, offset, store)
    total = number_of_offers(store)
    pagination = Pagination(page=page, per_page=per_page, total=total,
                            css_framework='bootstrap4')
    return offers, pagination


@app.route("/")
@app.route("/home")
def home():
    offers, pagination = content()
    return render_template('content.html', page_navigation="home", offers=offers, pagination=pagination)


@app.route("/quest")
def oculus():
    offers, pagination = content("Quest")
    return render_template('content.html', page_navigation="Oculus Quest", offers=offers, pagination=pagination)


@app.route("/rift")
def rift():
    offers, pagination = content("Rift")
    return render_template('content.html', page_navigation="Oculus Rift", offers=offers, pagination=pagination)


@app.route("/go")
def go():
    offers, pagination = content("Go")
    return render_template('content.html', page_navigation="Oculus Go", offers=offers, pagination=pagination)


@app.route("/steam")
def valve():
    offers, pagination = content("Steam")
    return render_template('content.html', page_navigation="Steam", offers=offers, pagination=pagination)


@app.route("/htc")
def htc():
    offers, pagination = content("HTC")
    return render_template('content.html', page_navigation="HTC", offers=offers, pagination=pagination)


@app.route("/wmr")
def wmr():
    offers, pagination = content("WMR")
    return render_template('content.html', page_navigation="WMR", offers=offers, pagination=pagination)


@app.route("/psvr")
def psvr():
    offers, pagination = content("PSVR")
    return render_template('content.html', page_navigation="PSVR", offers=offers, pagination=pagination)


if __name__ == '__main__':
    app.run(debug=True)
