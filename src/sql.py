import mysql.connector


mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="dublin12",  # enter your password to your mysql database here
    database="vr_dealz")
cursor = mydb.cursor()


def add_current_offers(offers):
    sql = '''INSERT INTO current_offers(store_id,title,sale_price,regular_price,headset) VALUES(%s,%s,%s,%s,%s)'''
    cursor.executemany(sql, offers)
    mydb.commit()
