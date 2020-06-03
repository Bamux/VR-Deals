from decimal import Decimal

import requests
from bs4 import BeautifulSoup

from web_scraping import sql
from web_scraping.data_sources_helper import Article, check_keywords


def get_offers(store_id):
    urls = [
        "https://www.saturn.de/de/category/_playstation-686426.html",
        "https://www.saturn.de/de/category/_playstation-686426.html?page=2",
        "https://www.saturn.de/de/category/_vr-virtual-reality-671060.html",
        "https://www.saturn.de/de/category/_vr-virtual-reality-671060.html?page=2"
    ]
    offers = []
    article_name_list = []
    for url in urls:
        html = requests.get(url).text
        soup = BeautifulSoup(html, 'lxml')
        soup = soup.find_all('div', class_='base-info')
        for article in soup:
            article_name = article.find('h3').text
            sale_price = article.find_all('div', class_='price')
            keyword = check_keywords(article_name)
            if sale_price and keyword:
                if len(sale_price) > 1:
                    sale_price = sale_price[1]
                else:
                    sale_price = sale_price[0]
                sale_price = sale_price.text.replace('-', '00')
                sale_price = Decimal(sale_price.replace(',', '.'))
                category_id, article_name, regular_price = keyword
                if regular_price > sale_price > regular_price - regular_price / 3 and \
                        article_name not in article_name_list:
                    article_name_list.append(article_name)
                    website_article_id = article.find('a')
                    website_article_id = website_article_id['href']
                    website_article_id = f"https://www.saturn.de{website_article_id}"
                    img_url = article.find('img')
                    img_url = img_url["data-original"].split("fee")[0]
                    img_url = f"https:{img_url}fee_786_587_png"
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
    return offers


def main():
    print("\nSaturn:\n")
    store_id = sql.get_store_id("Saturn")[0]
    offers = get_offers(store_id)
    return store_id, offers


if __name__ == "__main__":
    main()
