import sql
import get_offers


def check_articles(offers):
    new_articles = []
    current_offers = []
    for offer in offers:
        store_id, website_article_id, *_, sale_price = offer
        article_id = sql.check_article(website_article_id, store_id)
        if article_id is None:
            new_articles.append(offer)
        else:
            current_offers.append((article_id[0], sale_price))
    return new_articles, current_offers


def add_articles(new_articles):
    current_offers = []
    if new_articles:
        for store_id, website_article_id, article_name, regular_price, sale_price in new_articles:
            sql.add_articles((store_id, website_article_id, article_name, regular_price))
            current_offers.append((sql.cursor.lastrowid, sale_price))
        sql.conn.commit()
    return current_offers


def main():
    offers = get_offers.main()
    # offers = [(1, 2434361173248640, 'End Space', Decimal('14.99'), Decimal('9.99')),
    #           (1, 642553419857058, 'Challenge Yourself From Home', Decimal('39.98'), Decimal('29.99')),
    #           (1, 234177034655085, 'Discover a New World From Home', Decimal('34.98'), Decimal('23.99'))]
    new_articles, current_offers = check_articles(offers)
    added_articles = add_articles(new_articles)
    if added_articles:
        current_offers.extend(added_articles)
    sql.conn_close()


if __name__ == "__main__":
    main()
