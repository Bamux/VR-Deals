import mysql.connector
import settings
import traceback


conn = mysql.connector.connect(
    host=settings.host,
    user=settings.user,
    passwd=settings.passwd,
    database=settings.database)
cursor = conn.cursor()


def add_current_offers(offers):
    try:
        sql = '''INSERT INTO current_offers(store_id,title,sale_price,regular_price,headset) VALUES(%s,%s,%s,%s,%s)'''
        cursor.executemany(sql, offers)
        conn.commit()
    except Exception as e:
        print(e)
        traceback.print_exc()
    finally:
        cursor.close()
        conn.close()
