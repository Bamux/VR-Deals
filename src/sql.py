import mysql.connector
import database_config

print(database_config.host)

mydb = mysql.connector.connect(
    host=database_config.host,
    user=database_config.root,
    passwd=database_config.passwd,
    database=database_config.database)
cursor = mydb.cursor()


def add_current_offers(offers):
    sql = '''INSERT INTO current_offers(store_id,title,sale_price,regular_price,headset) VALUES(%s,%s,%s,%s,%s)'''
    cursor.executemany(sql, offers)
    mydb.commit()
