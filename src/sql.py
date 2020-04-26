import mysql.connector
import settings

mydb = mysql.connector.connect(
    host=settings.host,
    user=settings.user,
    passwd=settings.passwd,
    database=settings.database)
cursor = mydb.cursor()


def add_current_offers(offers):
    sql = '''INSERT INTO current_offers(store_id,title,sale_price,regular_price,headset) VALUES(%s,%s,%s,%s,%s)'''
    cursor.executemany(sql, offers)
    mydb.commit()
