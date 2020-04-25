import sql
import get_offers


def main():
    sql.create_database()
    offers = get_offers.main()
    sql.reset_current_offers()
    sql.add_current_offers(offers)


if __name__ == "__main__":
    main()
