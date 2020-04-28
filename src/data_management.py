import sql
import oculus_store


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


def check_current_offers(current_offers):
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


def main():
    offers = oculus_store.main()
    new_articles, current_offers = check_articles(offers)
    added_articles = add_articles(new_articles)
    if added_articles:
        current_offers.extend(added_articles)
    new_offers, expired_offers = check_current_offers(current_offers)
    delete_expired_offers(expired_offers)
    if new_offers:
        sql.add_current_offers(new_offers)
    sql.conn_close()


if __name__ == "__main__":
    main()
