import mysql.connector
import settings
import traceback


conn = mysql.connector.connect(
    host=settings.host,
    user=settings.user,
    passwd=settings.passwd,
    database=settings.database)
cursor = conn.cursor()


def conn_close():
    cursor.close()
    conn.close()


def error_message(e):
    print(e)
    traceback.print_exc()


def add_current_offers(offers):
    try:
        sql = '''
        INSERT INTO current_offers(store_id,title,sale_price,regular_price,headset_id) 
        VALUES(%s,%s,%s,%s,%s)'''
        cursor.executemany(sql, offers)
        conn.commit()
    except Exception as e:
        error_message(e)
    finally:
        conn_close()


def get_oculus_stores():
    try:
        cursor.execute("SELECT * FROM stores where name like 'Oculus%'")
        return cursor.fetchall()
    except Exception as e:
        error_message(e)
    finally:
        conn_close()
