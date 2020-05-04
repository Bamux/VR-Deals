import mysql.connector

import settings

conn = None
try:
    conn = mysql.connector.connect(
        host=settings.host,
        user=settings.user,
        passwd=settings.passwd,
        database=settings.database)
    cursor = conn.cursor()
except mysql.connector.Error as error:
    print(error)


def add_current_offers(offers):
    sql = '''INSERT INTO current_offers(article_id,sale_price,date_time) VALUES(%s,%s,%s)'''
    cursor.executemany(sql, offers)
    conn.commit()


def add_article(new_article):
    sql = '''
    INSERT INTO articles(store_id, website_article_id, article_name, regular_price, img_url) 
    VALUES(%s,%s,%s,%s,%s)'''
    cursor.execute(sql, new_article)


def delete_expired_offers(expired_offers):
    sql = '''
    INSERT INTO expired_offers  (article_id, sale_price, date_time) 
    SELECT article_id, sale_price, date_time FROM current_offers where article_id = %s'''
    cursor.executemany(sql, expired_offers)
    sql = "DELETE from current_offers WHERE article_id = %s"
    cursor.executemany(sql, expired_offers)
    conn.commit()


def get_oculus_stores():
    cursor.execute("SELECT id, name, url FROM stores WHERE name = 'Quest' or name = 'Rift' or name = 'Go'")
    return cursor.fetchall()


def check_article(website_article_id, store_id):
    sql = "SELECT id, regular_price, img_url FROM articles WHERE website_article_id = %s and store_id= %s"
    cursor.execute(sql, (website_article_id, store_id))
    return cursor.fetchone()


def update_regular_price(regular_price, article_id):
    sql = "UPDATE articles SET regular_price = %s WHERE id = %s"
    cursor.execute(sql, (regular_price, article_id))
    conn.commit()


def update_img_url(img_url, article_id):
    sql = "UPDATE articles SET img_url = %s WHERE id = %s"
    cursor.execute(sql, (img_url, article_id))
    conn.commit()


def check_current_offers(store_id):
    sql = f'''
    SELECT article_id, sale_price FROM current_offers 
    INNER JOIN articles ON articles.id = current_offers.article_id
    WHERE store_id = {store_id}
    '''
    cursor.execute(sql)
    return cursor.fetchall()


def conn_close():
    cursor.close()
    conn.close()


def main():
    if conn is not None:
        conn_close()
        print("Database connection successfully tested.")
    else:
        print("Could not establish a database connection check your settings in the settings.py file:")


if __name__ == "__main__":
    main()
