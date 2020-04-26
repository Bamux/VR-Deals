import sql
import get_offers


def main():
    offers = get_offers.main()
    sql.add_current_offers(offers)
    sql.cursor.close()
    sql.mydb.close()
    print(testerg)


if __name__ == "__main__":
    main()
