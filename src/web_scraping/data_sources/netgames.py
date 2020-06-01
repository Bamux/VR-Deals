from decimal import Decimal

import requests
from bs4 import BeautifulSoup

from web_scraping import sql
from web_scraping.data_sources_helper import Article, check_keywords


def get_sale_price(article):
    offer["sale_price"] = article.find(offer["sale_price_find"][0], class_=offer["sale_price_find"][1]).text
    if offer["sale_price"]:
        offer["sale_price"] = offer["sale_price"].split("€ ")[1]
        offer["sale_price"] = Decimal(offer["sale_price"].replace(',', '.'))
        return True
    return False


def check_sale_price():
    if offer["regular_price"] > offer["sale_price"] > offer["regular_price"] - offer["regular_price"] / 3:
        return True
    return False


def get_website_article_id(article):
    offer["website_article_id"] = article.find('a')
    offer["website_article_id"] = offer["website_article_id"]['href']
    if offer["website_article_id"]:
        offer["website_article_id"] = offer["website_article_id"].split("?")[0]
        return True
    return False


def get_article_name(article):
    offer["article_name"] = article.find(offer["article_name_find"][0], class_=offer["article_name_find"][1]).text
    if offer["article_name"]:
        return True
    return False


def check_availability(article):
    available = article.find_all(offer["available_find"][0], class_=offer["available_find"][1])[1].text.strip()
    if available == "auf Lager":
        return True
    return False


def get_img_url(article):
    offer["img_url"] = article.find('img')
    offer["img_url"] = offer["img_url"].get('src')
    if offer["img_url"]:
        offer["img_url"] = offer["img_url"].split("/thumbnail_images/")[1]
        offer["img_url"] = "https://images.netgam.es/images/product_images/popup_images/" + offer["img_url"]
        return True
    return False


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
    soup = soup.find_all(offer["soup_find"][0], class_=offer["soup_find"][1])
    for article in soup:
        if not check_availability or not get_sale_price(article) or not get_article_name(article):
            continue
        if keyword := check_keywords(offer["article_name"]):
            offer["category_id"], offer["article_name"], offer["regular_price"] = keyword
            if check_sale_price() and get_website_article_id(article) and get_img_url(article):
                offers.append(add_offer())
    return offers


def main():
    offer.update(
        {
            "soup_find": ("div", "article-list-item clearfix"),
            "article_name_find": ("a", "product_link"),
            "sale_price_find": ("span", "gm_price"),
            "available_find": ("dd", "ai_shipping_time")
        }
    )
    offer["store_id"], _, offer["url"] = sql.get_store_id("Netgames")

    print("\nNetgames:\n")
    offers = get_offers()

    return offer["store_id"], offers


offer = {}

if __name__ == "__main__":
    main()
