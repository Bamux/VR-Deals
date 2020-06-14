from decimal import Decimal

import requests
from bs4 import BeautifulSoup

from web_scraping import sql
from web_scraping.data_sources_helper import Article


def get_html(url):
    html = requests.get(url).text
    html = BeautifulSoup(html, 'lxml')
    return html


def get_num_pages(soup, store):
    max_page = soup.find(store["max_page_find"][0], class_=store["max_page_find"][1])
    max_page = max_page.find_all('a')[-1]['href']
    max_page = int(max_page.split("/")[-1])
    return max_page


def url_with_pagination(url, page):
    if page != 0:
        url = f"{url}{page + 1}"
    return url


def get_article_name(article, store):
    article_name = article.find(store["article_name_find"][0], class_=store["article_name_find"][1])
    article_name = article_name.text.strip()
    return article_name


def get_decimal_price(price):
    price = price.split("€")[1]
    price = Decimal(price.replace(',', '.'))
    return price


def get_regular_price(article, store):
    regular_price = article.find(store["regular_price_find"][0], class_=store["regular_price_find"][1])
    if regular_price:
        regular_price = get_decimal_price(regular_price.text)
    return regular_price


def get_sale_price(article, store):
    sale_price = article.find(store["sale_price_find"][0], class_=store["sale_price_find"][1])
    if sale_price:
        sale_price = get_decimal_price(sale_price.text)
    return sale_price


def get_website_article_id(article, store):
    website_article_id = article.find('a')
    website_article_id = website_article_id['href']
    if website_article_id:
        website_article_id = store["article_url"] + website_article_id
    return website_article_id


def get_img_url(article, store):
    img_url = article.find_all(store["img_url_find"][0], class_=store["img_url_find"][1])
    if img_url:
        img_url = article.find_all('img')[1]
        img_url = img_url.get('srcset').split(", ")[2].split(" ")[0]
    return img_url


def main():
    offers = []
    store = {
        "name": "PLayStation",
        "url": "https://store.playstation.com/de-de/grid/STORE-MSF75508-PLAYSTATIONVRHUB/",
        "category": "software",
        "articles_find": ("div", "__desktop-presentation__grid-cell__base__0ba9f ember-view"),
        "max_page_find": ("div", "paginator-control__container"),
        "article_name_find": ("div", "grid-cell__title"),
        "regular_price_find": ("span", "price-display__strikethrough"),
        "sale_price_find": ("h3", "price-display__price"),
        "img_url_find": ("div", "product-image__img product-image__img--main"),
        "article_url": "https://store.playstation.com"
    }
    store_id = sql.get_store_id(store["name"])[0]
    category_id = sql.get_category_id(store["category"])[0]

    print(f'\n{store["name"]}:\n')
    url = store["url"]
    html = get_html(url)
    num_pages = get_num_pages(html, store)
    for page in range(num_pages):
        html = get_html(url_with_pagination(url, page))
        articles = html.find_all(store["articles_find"][0], class_=store["articles_find"][1])
        for article in articles:
            regular_price = get_regular_price(article, store)
            if not regular_price:
                continue
            article_name = get_article_name(article, store)
            sale_price = get_sale_price(article, store)
            website_article_id = get_website_article_id(article, store)
            img_url = get_img_url(article, store)
            offer = Article(0, store_id, category_id, website_article_id, article_name,
                            regular_price, sale_price, img_url)
            offer.print_offer()
            offers.append(offer)
    return store_id, offers


if __name__ == "__main__":
    main()
    sql.conn_close()
