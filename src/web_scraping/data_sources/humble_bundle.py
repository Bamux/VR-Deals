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
    article_name = article['human_name']
    sale_price = article['current_price']['amount']
    regular_price = article['full_price']['amount']
    img_url = article['large_capsule']
    offer = {"store_id": int(store_id),
             "website_article_id": None,
             "article_name": str(article_name),
             "regular_price": Decimal(regular_price),
             "sale_price": Decimal(sale_price),
             "img_url": img_url}
    print(article_name, ":", sale_price, "€")
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
