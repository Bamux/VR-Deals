import datetime
import sql
# import oculus_store
from decimal import Decimal


def check_articles(offers):
    """
    Checks if the article already exists in the database.
    Returns a list of articles that do not yet exist and a list of current offers.
    """
    new_articles = []
    current_offers = []
    for offer in offers:
        store_id, website_article_id, _, regular_price, sale_price = offer
        article_id, previous_regular_price = sql.check_article(website_article_id, store_id)
        if article_id is None:
            new_articles.append(offer)
        else:
            if regular_price != previous_regular_price:
                sql.update_article(regular_price, article_id)
            current_offers.append((article_id, sale_price))
    return new_articles, current_offers


def add_articles(new_articles):
    current_offers = []
    if new_articles:
        for new_article in new_articles:
            store_id, website_article_id, article_name, regular_price, sale_price = new_article
            sql.add_articles((store_id, website_article_id, article_name, regular_price))
            current_offers.append((sql.cursor.lastrowid, sale_price))
        sql.conn.commit()
    return current_offers


def check_current_offers(current_offers):
    """
    Compares the current offers with the previous offers.
    Returns a list for the new offers and the expired offers.
    """
    new_offers = []
    expired_offers = []
    previous_offers = sql.check_current_offers()
    for current_offer in current_offers:
        if current_offer not in previous_offers:
            new_offers.append(current_offer)
    for previous_offer in previous_offers:
        if previous_offer not in current_offers:
            article_id, _ = previous_offer
            expired_offers.append((article_id,))
    return new_offers, expired_offers


def delete_expired_offers(expired_offers):
    if expired_offers:
        sql.delete_expired_offers(expired_offers)


def new_offers_datetime(new_offers):
    """Adds the datetime to each new offer"""
    offers_datetime = []
    date_time = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    for article_id, sale_price in new_offers:
        offers_datetime.append((article_id, sale_price, date_time))
    return offers_datetime


def main():
    # offers = oculus_store.main()
    offers = [(1, 2434361173248640, 'End Space', Decimal('10.99'), Decimal('9.99')),
              (1, 642553419857058, 'Challenge Yourself From Home', Decimal('39.98'), Decimal('29.99')),
              (1, 234177034655085, 'Discover a New World From Home', Decimal('34.98'), Decimal('23.99'))]
    new_articles, current_offers = check_articles(offers)
    added_articles = add_articles(new_articles)
    if added_articles:
        current_offers.extend(added_articles)
    new_offers, expired_offers = check_current_offers(current_offers)
    delete_expired_offers(expired_offers)
    if new_offers:
        sql.add_current_offers(new_offers_datetime(new_offers))
    sql.conn_close()


if __name__ == "__main__":
    main()
