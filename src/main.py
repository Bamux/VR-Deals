import get_offers
from pathlib import Path
import sql


def main():
    if Path("settings.py"):
        offers = get_offers.main()
        sql.add_current_offers(offers)
    else:
        print("Please fill out the settings.example.py and rename it to settings.py")


if __name__ == "__main__":
    main()
