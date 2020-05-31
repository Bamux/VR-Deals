from decimal import Decimal

import requests
from bs4 import BeautifulSoup

from web_scraping import sql
from web_scraping.data_sources_helper import Article, check_keywords


def get_offers(store_id, url):
    offers = []
    html = requests.get(url).text
    soup = BeautifulSoup(html, 'lxml')
    soup = soup.find_all('div', class_='article-list-item clearfix')
    for article in soup:
        available = article.find_all('dd', class_='ai_shipping_time')[1].text.strip()
        if available == "auf Lager":
            sale_price = article.find('span', class_='gm_price').text
            article_name = article.find('a', class_='product_link').text
            keyword = check_keywords(article_name)
            if sale_price and keyword:
                sale_price = sale_price.split("€ ")[1]
                sale_price = Decimal(sale_price.replace(',', '.'))
                category_id, article_name, regular_price = keyword
                if regular_price > sale_price > regular_price - regular_price / 3:
                    website_article_id = article.find('a')
                    website_article_id = website_article_id['href'].split("?")[0]
                    img_url = article.find('img')
                    img_url = img_url.get('src').split("/thumbnail_images/")[1]
                    img_url = f"https://images.netgam.es/images/product_images/popup_images/{img_url}"
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
    print("\nNetgames:\n")
    store_id, store, url = sql.get_store_id("Netgames")
    offers = get_offers(store_id, url)
    return store_id, offers


if __name__ == "__main__":
    main()
