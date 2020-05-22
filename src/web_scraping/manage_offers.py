import datetime

from web_scraping import sql, data_sources, upload_github_page


def add_article(offer):
    """
    Adds new articles to the database articles table.
    Returns a list of the new offers with the corresponding id from the articles table.
    """
    sql.add_article((offer.store_id, offer.website_article_id,
                     offer.article_name, offer.regular_price,
                     offer.img_url))
    article_id = sql.cursor.lastrowid
    return article_id


def check_update_articles(offers):
    """
    Checks if the article already exists in the database articles table.
    Update the regular price and image url if it has changed.
    """
    for offer in offers:
        sql_query_result = sql.check_article(offer.website_article_id, offer.store_id)
        if sql_query_result is None:
            article_id = add_article(offer)
            offer.article_id = article_id
        else:
            article_id, previous_regular_price, previous_img_url = sql_query_result
            if offer.regular_price != previous_regular_price:
                sql.update_regular_price(offer.regular_price, article_id)
            # if offer.img_url != previous_img_url:
                # print(offer.img_url)
                # print(previous_img_url)
                # sql.update_img_url(offer.img_url, article_id)
            offer.article_id = article_id


def check_expired_offers(previous_offers, offers):
    """
    Compares the current offers with the previous offers.
    Returns a list for the expired offers.
    """
    expired_offers = []
    if not previous_offers:
        return expired_offers
    for previous_offer in previous_offers:
        article_id, sale_price = previous_offer
        for offer in offers:
            if article_id == offer.article_id and sale_price == offer.sale_price:
                break
        else:
            expired_offers.append((article_id,))
    return expired_offers


def add_offers_datetime(offers):
    """Adds the datetime to each new offer"""
    offers_datetime = []
    date_time = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    for offer in offers:
        offers_datetime.append((offer.article_id, offer.sale_price, date_time))
    return offers_datetime


def database_interaction(database_update, offers, store_id):
    """Checks if offers already exist, adds new offers and moves expired offers"""
    if not offers:
        return database_update
    check_update_articles(offers)
    previous_offers = sql.check_current_offers((store_id,))
    expired_offers = check_expired_offers(previous_offers, offers)
    if expired_offers:
        print(expired_offers)
        sql.delete_expired_offers(expired_offers)
    if expired_offers or len(previous_offers) != len(offers):
        offers_datetime = add_offers_datetime(offers)
        sql.delete_offers((store_id,))
        sql.add_current_offers(offers_datetime)
        database_update = True
    sql.conn.commit()
    return database_update


def get_offers(store):
    offers = []
    store_id, store_name, _ = store
    if "Oculus" in store_name:
        offers = data_sources.oculus.main(store)
    elif store_name == "Steam":
        offers = data_sources.steam.main(store_id)
    elif store_name == "Humble Bundle":
        offers = data_sources.humble_bundle.main(store_id)
    return offers


def main():
    database_update = False
    stores = sql.get_stores()
    for store in stores:
        offers = get_offers(store)
        database_update = database_interaction(database_update, offers, store_id=store[0])
    if database_update:
        upload_github_page.main()
    sql.conn_close()


if __name__ == "__main__":
    main()
