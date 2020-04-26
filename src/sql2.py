import sqlite3

# Database connection
conn = sqlite3.connect('../database/database.db')
c = conn.cursor()


def create_database():
    """Creates the tables of the database."""
    with conn:
        c.execute('''CREATE TABLE IF NOT EXISTS current_offers
         (store_id INT NOT NULL, title TEXT NOT NULL, sale_price REAL NOT NULL,
          regular_price REAL NOT NULL, headset TEXT NOT NULL)''')

        c.execute('''CREATE TABLE IF NOT EXISTS current_offers
         (store_id INT NOT NULL, title TEXT NOT NULL, sale_price REAL NOT NULL,
          regular_price REAL NOT NULL, headset TEXT NOT NULL)''')


def get_current_offers():
    """Returns all VR Games as a list"""
    c.execute("select * from current_offers")
    return c.fetchall()


def add_current_offers(val):
    """Adds current offers to the database."""
    with conn:
        c.executemany('''
        INSERT INTO current_offers(store_id,title,sale_price,regular_price,headset) VALUES(?,?,?,?,?)''', val)


def reset_current_offers():
    """Deletes the content of the table."""
    with conn:
        c.execute('DELETE FROM current_offers;')
