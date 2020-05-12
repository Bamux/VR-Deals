"""Gets the offers from the steam store via web scraping with the json and lxml library."""
import json
from decimal import Decimal

import requests
from bs4 import BeautifulSoup

from web_scraping.article import Article


def decimal_price(price):
    price = price.strip().split("€")[0]
    price = price.replace(',', '.')
    price = price.replace('--', '00')
    price = Decimal(price)
    return price


def get_steam_offers(store_id):
    """Returns the offers from the steam store."""
    print("Steam VR offers:")
    infinite_scrolling = 0
    offers = []
    blacklist = [14973]  # apps that steam mistakenly displays as VR apps
    while True:
        url = f'https://store.steampowered.com/search/results/?query&start={infinite_scrolling}' \
              f'&count=50&dynamic_data=&sort_by=_ASC&vrsupport=402&snr=1_7_7_2300_7&specials=1&infinite=1'
        json_data = json.loads(requests.get(url).text)
        if json_data["results_html"] == "\r\n<!-- List Items -->\r\n<!-- End List Items -->\r\n":
            break
        soup = BeautifulSoup(json_data["results_html"], 'lxml')
        article_names = soup.find_all('span', class_='title')
        app_urls = soup.find_all('img')
        prices = soup.find_all('div', class_='col search_price discounted responsive_secondrow')
        print(len(article_names), len(prices))
        for app_url, article_name, price in \
                zip(app_urls, article_names, prices):
            price = price.text.strip()
            price = price.split("€")
            regular_price = price[0]
            sale_price = price[1]
            app = app_url['src'].split("/")[5]
            website_article_id = app
            if website_article_id not in blacklist and "bundle" not in app_url:
                sale_price = decimal_price(sale_price)
                regular_price = decimal_price(regular_price)
                article_id = 0
                offer = Article(
                    article_id,
                    store_id,
                    website_article_id,
                    article_name.text,
                    regular_price,
                    sale_price,
                    img_url="",
                )
                offers.append(offer)
                offer.print_offer()
        infinite_scrolling += 50
    return offers


def main(store_id):
    offers = get_steam_offers(store_id)
    return offers


if __name__ == "__main__":
    main(store_id=0)
