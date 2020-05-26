"""Gets the offers from the humble bundle store"""
import json

import requests

from web_scraping import sql
from web_scraping.data_sources.article import Article


def get_json_data(page):
    url = f'https://www.humblebundle.com/store/api/search?sort=bestselling&filter=onsale&' \
          f'genre=vr&hmb_source=store_navbar&page={page}&request=1'
    json_data = json.loads(requests.get(url).text)
    return json_data


def add_json_data(store_id, article, category_id):
    article_id = 0
    offer = Article(
        article_id,
        store_id,
        category_id,
        article['human_url'],
        article['human_name'],
        article['full_price']['amount'],
        article['current_price']['amount'],
        article['large_capsule'],
    )
    offer.print_offer()
    return offer


def get_offers(store_id, category_id):
    offers = []
    json_data = get_json_data(page=0)
    num_pages = json_data['num_pages']
    for page in range(num_pages):
        if page != 0:
            json_data = get_json_data(page)
        results = json_data['results']
        for article in results:
            offer = add_json_data(store_id, article, category_id)
            offers.append(offer)
    return offers


def main():
    print("\nHumble Bundle:\n")
    store_id = sql.get_store_id("Humble Bundle")[0]
    category_id = sql.get_category_id("software")[0]
    offers = get_offers(store_id, category_id)
    return store_id, offers


if __name__ == "__main__":
    main()
    sql.conn_close()
