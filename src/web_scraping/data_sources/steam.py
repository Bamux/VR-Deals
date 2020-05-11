"""Gets the offers from the steam store via web scraping with the json and lxml library."""
import json
from decimal import Decimal

import requests
from lxml import html


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
        sale_prices = []
        url = f'https://store.steampowered.com/search/results/?query&start={infinite_scrolling}' \
              f'&count=50&dynamic_data=&sort_by=_ASC&vrsupport=402&snr=1_7_7_2300_7&specials=1&infinite=1'
        json_data = json.loads(requests.get(url).text)
        if json_data["results_html"] == "\r\n<!-- List Items -->\r\n<!-- End List Items -->\r\n":
            break
        tree = html.fromstring(json_data["results_html"])
        app_urls = tree.xpath(".//a/@href")
        article_names = tree.xpath('//span[@class="title"]/text()')
        regular_prices = tree.xpath('//strike/text()')
        sale_prices_html = tree.xpath('//div[@class="col search_price discounted responsive_secondrow"]/text()')
        for sale_price in sale_prices_html:
            if "€" in sale_price:
                sale_prices.append(sale_price)
        for app_url, article_name, regular_price, sale_price in \
                zip(app_urls, article_names, regular_prices, sale_prices):
            app = app_url.split('/')
            website_article_id = int(app[4])
            if website_article_id not in blacklist and "bundle" not in app_url:
                sale_price = decimal_price(sale_price)
                regular_price = decimal_price(regular_price)
                offers.append({"store_id": int(store_id), "website_article_id": int(website_article_id),
                               "article_name": str(article_name), "regular_price": regular_price,
                               "sale_price": sale_price, "img_url": ""})
                print(article_name, ":", sale_price, "€")
        infinite_scrolling += 50
    return offers


def main(store_id):
    offers = get_steam_offers(store_id)
    return offers


if __name__ == "__main__":
    main(store_id=0)
