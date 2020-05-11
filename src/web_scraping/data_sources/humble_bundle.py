"""Gets the offers from the humble bundle store"""
import json
from decimal import Decimal

import requests


def get_json_data(page):
    url = f'https://www.humblebundle.com/store/api/search?sort=bestselling&filter=onsale&' \
          f'genre=vr&hmb_source=store_navbar&page={page}&request=1'
    json_data = json.loads(requests.get(url).text)
    return json_data


def evaluate_json_data(store_id, article):
    offer = {"store_id": int(store_id),
             "website_article_id": article['human_url'],
             "article_name": str(article['human_name']),
             "regular_price": Decimal(article['full_price']['amount']),
             "sale_price": Decimal(article['current_price']['amount']),
             "img_url": article['large_capsule']}
    print(article['human_name'], ":", article['current_price']['amount'], "€")
    return offer


def get_offers(store_id):
    offers = []
    json_data = get_json_data(page=0)
    num_pages = json_data['num_pages']
    for page in range(num_pages):
        if page != 0:
            json_data = get_json_data(page)
        results = json_data['results']
        for article in results:
            offer = evaluate_json_data(store_id, article)
            offers.append(offer)
    return offers


def main(store_id):
    print("Humble Bundle:")
    offers = get_offers(store_id)
    return offers


if __name__ == "__main__":
    main(store_id=0)
