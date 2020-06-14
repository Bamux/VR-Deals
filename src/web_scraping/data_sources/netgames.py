from decimal import Decimal

import requests
from bs4 import BeautifulSoup

from web_scraping import sql
from web_scraping.data_sources_helper import Article, check_keywords


def get_sale_price(article, find):
    sale_price = article.find(find["sale_price_find"][0], class_=find["sale_price_find"][1]).text
    if sale_price:
        sale_price = sale_price.split("€ ")[1]
        sale_price = Decimal(sale_price.replace(',', '.'))
    return sale_price


def get_website_article_id(article):
    website_article_id = article.find('a')
    website_article_id = website_article_id['href']
    if website_article_id:
        website_article_id = website_article_id.split("?")[0]
    return website_article_id


def check_availability(article, find):
    available = article.find_all(find["available_find"][0], class_=find["available_find"][1])
    if available:
        available = available[1].text.strip()
        if available == "auf Lager":
            return True
    return False


def get_img_url(article):
    img_url = article.find('img')
    img_url = img_url.get('src')
    if img_url:
        img_url = img_url.split("/thumbnail_images/")[1]
        img_url = "https://images.netgam.es/images/product_images/popup_images/" + img_url
    return img_url


def main():
    offers = []
    find = {
        "soup_find": ("div", "article-list-item clearfix"),
        "article_name_find": ("a", "product_link"),
        "sale_price_find": ("span", "gm_price"),
        "available_find": ("dd", "ai_shipping_time")
    }
    store_id, _, url = sql.get_store_id("Netgames")

    print("\nNetgames:\n")

    html = requests.get(url).text
    soup = BeautifulSoup(html, 'lxml')
    soup = soup.find_all(find["soup_find"][0], class_=find["soup_find"][1])
    for article in soup:
        available = check_availability(article, find)
        if not available:
            continue
        article_name = article.find(find["article_name_find"][0], class_=find["article_name_find"][1]).text
        vr_article = check_keywords(article_name)
        if not vr_article:
            continue
        sale_price = get_sale_price(article, find)
        category_id, article_name, regular_price = vr_article
        if regular_price > sale_price > regular_price - regular_price / 3:
            website_article_id = get_website_article_id(article)
            img_url = get_img_url(article)
            offer = Article(
                0,
                store_id,
                category_id,
                website_article_id,
                article_name,
                regular_price,
                sale_price,
                img_url,
            )
            offer.print_offer()
            offers.append(offer)

    return store_id, offers


if __name__ == "__main__":
    main()
