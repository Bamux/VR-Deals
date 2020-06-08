"""Gets the offers from the steam store via web scraping with the json and lxml library."""
import json
from decimal import Decimal

import requests
from bs4 import BeautifulSoup

from web_scraping import sql
from web_scraping.data_sources_helper import Article
import time


def decimal_price(price):
    price = price.strip().split("€")[0]
    price = price.replace(',', '.')
    price = price.replace('--', '00')
    price = Decimal(price)
    return price


def price_evaluation(app, price):
    if price is not None:
        price = price.text.split("€")
        regular_price = price[0].strip()
        sale_price = price[1].strip()
    else:
        price = app.find('div', class_='col search_price responsive_secondrow').text
        regular_price = price.strip()
        sale_price = regular_price
    sale_price = decimal_price(sale_price)
    regular_price = decimal_price(regular_price)
    return sale_price, regular_price


def error_handling(counter):
    print("An error has occurred during data transmission, the program waits 15 seconds and tries again.")
    time.sleep(15)
    counter += 1
    return counter


def get_steam_offers(store_id, category_id):
    """Returns the offers from the steam store."""
    infinite_scrolling = 0
    offers = []
    blacklist = [14973]  # apps that steam mistakenly displays as VR apps{}
    counter = 0
    while True:
        url = f'https://store.steampowered.com/search/results/?query&star' \
              f't={infinite_scrolling}' \
              f'&count=50&dynamic_data=&sort_by=_ASC&vrsupport=402&snr=1_7_7_2300_7&specials=1&infinite=1'
        try:
            json_data = json.loads(requests.get(url).text)
        except Exception as e:
            print(e)
            if error_handling(counter) == 5:
                break
            continue
        if json_data["results_html"] == "\r\n<!-- List Items -->\r\n<!-- End List Items -->\r\n":
            break
        soup = BeautifulSoup(json_data["results_html"], 'lxml')
        app_urls = soup.find_all('img')
        apps = soup.find_all('div', class_='responsive_search_name_combined')
        for app_url, app_info in zip(app_urls, apps):
            article_name = app_info.find('span', class_='title').text
            app = app_url['src'].split("/")
            bundle_app = app[4]
            website_article_id = app[5]
            img_url = f"https://steamcdn-a.akamaihd.net/steam/apps/{website_article_id}/header.jpg"
            website_article_id = f"https://store.steampowered.com/app/{website_article_id}/"
            if website_article_id not in blacklist and "bundle" not in bundle_app:
                try:
                    price = app_info.find('div', class_='col search_price discounted responsive_secondrow')
                    sale_price, regular_price = price_evaluation(app, price)
                    article_id = 0
                    offer = Article(
                        article_id,
                        store_id,
                        category_id,
                        website_article_id,
                        article_name,
                        regular_price,
                        sale_price,
                        img_url,
                    )
                    offers.append(offer)
                    offer.print_offer()
                except Exception as e:
                    print(e)
                    if error_handling(counter) == 5:
                        break
                    continue
        infinite_scrolling += 50
    return offers


def main():
    print("\nSteam VR:\n")
    store_id = sql.get_store_id("Steam")[0]
    category_id = sql.get_category_id("software")[0]
    offers = get_steam_offers(store_id, category_id)
    return store_id, offers


if __name__ == "__main__":
    main()
