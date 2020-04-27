import mysql.connector
import settings


conn = mysql.connector.connect(
    host=settings.host,
    user=settings.user,
    passwd=settings.passwd,
    database=settings.database)
cursor = conn.cursor()


def add_current_offers(offers):
    sql = '''INSERT INTO current_offers(store_id,title,sale_price,regular_price,headset_id) VALUES(%s,%s,%s,%s,%s)'''
    cursor.executemany(sql, offers)
    conn.commit()


def add_articles(new_articles):
    sql = '''INSERT INTO articles(store_id, website_article_id, article_name, regular_price) VALUES(%s,%s,%s,%s)'''
    cursor.execute(sql, new_articles)


def get_oculus_stores():
    cursor.execute("SELECT * FROM stores WHERE name LIKE 'Oculus%'")
    return cursor.fetchall()


def check_article(website_article_id, store_id):
    cursor.execute(f"SELECT id FROM articles WHERE website_article_id = {website_article_id} and store_id= {store_id}")
    return cursor.fetchone()


def conn_close():
    cursor.close()
    conn.close()
