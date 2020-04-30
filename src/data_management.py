import datetime

import oculus_store
import sql


def check_update_articles(offers):
    """
    Checks if the article already exists in the database articles table.
    Update the regular price if it has changed.
    Returns a list of articles that do not yet exist and a list of the new offers
    with the corresponding id from the articles table.
    """
    new_articles = []
    new_offers = []
    for offer in offers:
        store_id, website_article_id, _, regular_price, sale_price = offer
        sql_query_result = sql.check_article(website_article_id, store_id)
        if sql_query_result is None:
            new_articles.append(offer)
        else:
            article_id, previous_regular_price = sql_query_result
            if regular_price != previous_regular_price:
                sql.update_article(regular_price, article_id)
            new_offers.append((article_id, sale_price))
    return new_articles, new_offers


def add_articles(new_articles):
    """
    Adds new articles to the database articles table.
    Returns a list of the new offers with the corresponding id from the articles table.
    """
    new_offers = []
    if new_articles:
        for new_article in new_articles:
            store_id, website_article_id, article_name, regular_price, sale_price = new_article
            sql.add_article((store_id, website_article_id, article_name, regular_price))
            new_offers.append((sql.cursor.lastrowid, sale_price))
        sql.conn.commit()
    return new_offers


def check_previous_offers(previous_offers, new_offers):
    """
    Compares the current offers with the previous offers.
    Returns a list for the expired offers.
    """
    expired_offers = []
    for previous_offer in previous_offers:
        if previous_offer not in new_offers:
            article_id, _ = previous_offer
            expired_offers.append((article_id,))
    return expired_offers


def check_new_offers(previous_offers, new_offers):
    """
    Compares the new offers with the previous offers.
    Returns a list of offers that do not yet exist in the list of previous offers.
    """
    completely_new_offers = []
    for new_offer in new_offers:
        if new_offer not in previous_offers:
            completely_new_offers.append(new_offer)
    return completely_new_offers


def new_offers_datetime(new_offers):
    """Adds the datetime to each new offer"""
    offers_datetime = []
    date_time = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    for article_id, sale_price in new_offers:
        offers_datetime.append((article_id, sale_price, date_time))
    return offers_datetime


def main():
    offers = oculus_store.main()
    if not offers:
        return
    new_articles, new_offers = check_update_articles(offers)
    added_articles = add_articles(new_articles)
    if added_articles:
        new_offers.extend(added_articles)
    previous_offers = sql.check_current_offers()
    expired_offers = check_previous_offers(previous_offers, new_offers)
    if expired_offers:
        sql.delete_expired_offers(expired_offers)
    new_offers = check_new_offers(previous_offers, new_offers)
    if new_offers:
        sql.add_current_offers(new_offers_datetime(new_offers))
    sql.conn_close()


if __name__ == "__main__":
    main()
