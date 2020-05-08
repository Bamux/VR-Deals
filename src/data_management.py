import datetime
import oculus_store
import sql


def check_update_articles(offers):
    """
    Checks if the article already exists in the database articles table.
    Update the regular price and image url if it has changed.
    Returns a list of articles that do not yet exist and a list of the new offers
    with the corresponding id from the articles table.
    """
    new_articles = []
    new_offers = []
    for offer in offers:
        sql_query_result = sql.check_article(offer["website_article_id"], offer["store_id"])
        if sql_query_result is None:
            new_articles.append(offer)
        else:
            article_id, previous_regular_price, previous_img_url = sql_query_result
            if offer["regular_price"] != previous_regular_price:
                sql.update_regular_price(offer["regular_price"], article_id)
            # if offer["img_url"] != previous_img_url:
                # print(offer["img_url"])
                # print(previous_img_url)
                # sql.update_img_url(offer["img_url"], article_id)
            new_offers.append({"article_id": article_id, "sale_price": offer["sale_price"]})
    return new_articles, new_offers


def add_articles(new_articles):
    """
    Adds new articles to the database articles table.
    Returns a list of the new offers with the corresponding id from the articles table.
    """
    new_offers = []
    if new_articles:
        for new_article in new_articles:
            sql.add_article((new_article["store_id"], new_article["website_article_id"],
                             new_article["article_name"], new_article["regular_price"],
                             new_article["img_url"]))
            new_offers.append({"article_id": sql.cursor.lastrowid,
                               "sale_price": new_article["sale_price"]})
        sql.conn.commit()
    return new_offers


def check_expired_offers(previous_offers, new_offers):
    """
    Compares the current offers with the previous offers.
    Returns a list for the expired offers.
    """
    expired_offers = []
    if not previous_offers:
        return expired_offers
    for previous_offer in previous_offers:
        article_id, sale_price = previous_offer
        for new_offer in new_offers:
            if article_id == new_offer["article_id"] and sale_price == new_offer["sale_price"]:
                break
        else:
            expired_offers.append((article_id,))
    return expired_offers


def check_new_offers(previous_offers, new_offers):
    """
    Compares the new offers with the previous offers.
    Returns a list of offers that do not yet exist in the list of previous offers.
    """
    completely_new_offers = []
    for new_offer in new_offers:
        for previous_offer in previous_offers:
            article_id, sale_price = previous_offer
            if new_offer["article_id"] == article_id and sale_price == new_offer["sale_price"]:
                break
        else:
            completely_new_offers.append(new_offer)
    return completely_new_offers


def new_offers_datetime(new_offers):
    """Adds the datetime to each new offer"""
    offers_datetime = []
    date_time = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    for new_offer in new_offers:
        offers_datetime.append((new_offer["article_id"], new_offer["sale_price"], date_time))
    return offers_datetime


def database_interaction(offers, store_id):
    """Checks if offers already exist, adds new offers and moves expired offers"""
    new_articles, new_offers = check_update_articles(offers)
    added_articles = add_articles(new_articles)
    if added_articles:
        new_offers.extend(added_articles)
    previous_offers = sql.check_current_offers(store_id)
    expired_offers = check_expired_offers(previous_offers, new_offers)
    if expired_offers:
        print(expired_offers)
        sql.delete_expired_offers(expired_offers)
    new_offers = check_new_offers(previous_offers, new_offers)
    if new_offers:
        sql.add_current_offers(new_offers_datetime(new_offers))


def main():
    offers = []
    stores = sql.get_stores()
    for store in stores:
        store_id, store_name, store_url = store
        print(store_name)
        if "Oculus" in store_name:
            offers = oculus_store.main(store)
        if offers:
            database_interaction(offers, store_id)
    sql.conn_close()


if __name__ == "__main__":
    main()
