import sql
import get_offers
from pathlib import Path


def main():
    if Path("settings.py"):
        offers = get_offers.main()
        sql.add_current_offers(offers)
        sql.cursor.close()
        sql.mydb.close()
    else:
        print("Please fill out the settings.example.py and rename it to settings.py")


if __name__ == "__main__":
    main()
