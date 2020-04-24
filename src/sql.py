import sqlite3

# Database connection
conn = sqlite3.connect('../database/vr_games_database.db')
c = conn.cursor()


def create_database():
    """Creates the tables of the database."""
    with conn:
        c.execute('''CREATE TABLE IF NOT EXISTS games
         (store_id integer NOT NULL, title text NOT NULL)''')
