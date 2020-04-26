import mysql.connector
import config

print(config.host)

mydb = mysql.connector.connect(
    host=config.host,
    user=config.root,
    passwd=config.passwd,
    database=config.database)
cursor = mydb.cursor()


def add_current_offers(offers):
    sql = '''INSERT INTO current_offers(store_id,title,sale_price,regular_price,headset) VALUES(%s,%s,%s,%s,%s)'''
    cursor.executemany(sql, offers)
    mydb.commit()
