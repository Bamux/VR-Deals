from decimal import Decimal

import requests
from bs4 import BeautifulSoup

from web_scraping import sql
from web_scraping.data_sources_helper import Article, check_keywords


def get_sale_price(article):
    offer["sale_price"] = article.find('span', class_='gm_price').text
    if offer["sale_price"]:
        offer["sale_price"] = offer["sale_price"].split("€ ")[1]
        offer["sale_price"] = Decimal(offer["sale_price"].replace(',', '.'))


def check_sale_price():
    if offer["regular_price"] > offer["sale_price"] > offer["regular_price"] - offer["regular_price"] / 3:
        return True
    return False


def get_website_article_id(article):
    offer["website_article_id"] = article.find('a')
    offer["website_article_id"] = offer["website_article_id"]['href'].split("?")[0]


def get_article_name(article):
    offer["article_name"] = article.find('a', class_='product_link').text


def check_availability(article):
    available = article.find_all('dd', class_='ai_shipping_time')[1].text.strip()
    if available == "auf Lager":
        return True
    return False


def get_img_url(article):
    offer["img_url"] = article.find('img')
    offer["img_url"] = offer["img_url"].get('src').split("/thumbnail_images/")[1]
    offer["img_url"] = "https://images.netgam.es/images/product_images/popup_images/" + offer["img_url"]


def add_offer():
    offer_class = Article(
        0,
        offer["store_id"],
        offer["category_id"],
        offer["website_article_id"],
        offer["article_name"],
        offer["regular_price"],
        offer["sale_price"],
        offer["img_url"],
    )
    offer_class.print_offer()
    return offer_class


def get_offers():
    offers = []
    html = requests.get(offer["url"]).text
    soup = BeautifulSoup(html, 'lxml')
    soup = soup.find_all('div', class_='article-list-item clearfix')
    for article in soup:
        if not check_availability:
            continue
        get_sale_price(article)
        get_article_name(article)
        keyword = check_keywords(offer["article_name"])
        if offer["sale_price"] and keyword:
            offer["category_id"], offer["article_name"], offer["regular_price"] = keyword
            if check_sale_price():
                get_website_article_id(article)
                get_img_url(article)
                offers.append(add_offer())
    return offers


def main():
    print("\nNetgames:\n")
    offer["store_id"], _, offer["url"] = sql.get_store_id("Netgames")
    offers = get_offers()
    return offer["store_id"], offers


offer = {}


if __name__ == "__main__":
    main()
