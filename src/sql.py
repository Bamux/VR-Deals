import mysql.connector
import settings


conn = mysql.connector.connect(
    host=settings.host,
    user=settings.user,
    passwd=settings.passwd,
    database=settings.database)
cursor = conn.cursor()


def add_current_offers(offers):
    sql = '''INSERT INTO current_offers(article_id,sale_price,date_time) VALUES(%s,%s,%s)'''
    cursor.executemany(sql, offers)
    conn.commit()


def add_articles(new_articles):
    sql = '''INSERT INTO articles(store_id, website_article_id, article_name, regular_price) VALUES(%s,%s,%s,%s)'''
    cursor.execute(sql, new_articles)


def delete_expired_offers(expired_offers):
    sql = "DELETE from current_offers WHERE article_id = %s"
    cursor.executemany(sql, expired_offers)
    conn.commit()


def get_oculus_stores():
    cursor.execute("SELECT * FROM stores WHERE name LIKE 'Oculus%'")
    return cursor.fetchall()


def check_article(website_article_id, store_id):
    sql = f"SELECT id FROM articles WHERE website_article_id = {website_article_id} and store_id= {store_id}"
    cursor.execute(sql)
    return cursor.fetchone()


def check_current_offers():
    cursor.execute(f"SELECT article_id, sale_price FROM current_offers")
    return cursor.fetchall()


# def check_expired_offers():
#     cursor.execute("SELECT current_offers.id, website_article_id FROM current_offers "
#                    "INNER JOIN articles ON articles.id = current_offers.article_id")
#     return cursor.fetchall()


def conn_close():
    cursor.close()
    conn.close()
