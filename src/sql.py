import sqlite3

# Database connection
conn = sqlite3.connect('../database/database.db')
c = conn.cursor()


def create_database():
    """Creates the tables of the database."""
    with conn:
        c.execute('''CREATE TABLE IF NOT EXISTS current_offers
         (store_id REAL NOT NULL, title TEXT NOT NULL, sale_price REAL NOT NULL,
          regular_price TEXT NOT NULL, headset TEXT NOT NULL)''')
