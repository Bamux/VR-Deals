from decimal import Decimal

import requests
from bs4 import BeautifulSoup

from web_scraping import sql
from web_scraping.data_sources_helper import Article


def get_num_pages(soup, find):
    max_page = soup.find(find["max_page_find"][0], class_=find["max_page_find"][1])
    max_page = max_page.find_all('a')[-1]['href']
    max_page = int(max_page.split("/")[-1])
    return max_page


def get_decimal_price(price):
    price = price.split("€")[1]
    price = Decimal(price.replace(',', '.'))
    return price


def get_regular_price(article, find):
    regular_price = article.find(find["regular_price_find"][0], class_=find["regular_price_find"][1])
    if regular_price:
        regular_price = get_decimal_price(regular_price.text)
    return regular_price


def get_sale_price(article, find):
    sale_price = article.find(find["sale_price_find"][0], class_=find["sale_price_find"][1])
    if sale_price:
        sale_price = get_decimal_price(sale_price.text)
    return sale_price


def get_website_article_id(article, find):
    website_article_id = article.find('a')
    website_article_id = website_article_id['href']
    if website_article_id:
        website_article_id = find["article_url"] + website_article_id
    return website_article_id


def get_img_url(article, find):
    img_url = article.find_all(find["img_url_find"][0], class_=find["img_url_find"][1])
    if img_url:
        img_url = article.find_all('img')[1]
        img_url = img_url.get('srcset').split(", ")[2].split(" ")[0]
    return img_url


def main():
    offers = []
    find = {
        "soup_find": ("div", "__desktop-presentation__grid-cell__base__0ba9f ember-view"),
        "max_page_find": ("div", "paginator-control__container"),
        "article_name_find": ("div", "grid-cell__title"),
        "regular_price_find": ("span", "price-display__strikethrough"),
        "sale_price_find": ("h3", "price-display__price"),
        "img_url_find": ("div", "product-image__img product-image__img--main"),
        "article_url": "https://store.playstation.com"
    }
    store_id, _, url = sql.get_store_id("Sony")
    category_id = sql.get_category_id("software")[0]

    print("\nSony:\n")

    html = requests.get(url).text
    soup = BeautifulSoup(html, 'lxml')
    num_pages = get_num_pages(soup, find)
    for page in range(num_pages):
        if page != 0:
            new_url = f"{url}{page + 1}"
            html = requests.get(new_url).text
            soup = BeautifulSoup(html, 'lxml')
        soup = soup.find_all(find["soup_find"][0], class_=find["soup_find"][1])
        for article in soup:
            regular_price = get_regular_price(article, find)
            if not regular_price:
                continue
            article_name = article.find(find["article_name_find"][0], class_=find["article_name_find"][1])
            article_name = article_name.text.strip()
            sale_price = get_sale_price(article, find)
            website_article_id = get_website_article_id(article, find)
            img_url = get_img_url(article, find)
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
    sql.conn_close()
