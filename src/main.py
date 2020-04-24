import sql
import get_offers


def main():
    sql.create_database()
    get_offers.main()


if __name__ == "__main__":
    main()
