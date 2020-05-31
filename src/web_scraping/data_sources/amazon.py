from decimal import Decimal

import requests
from bs4 import BeautifulSoup

from web_scraping.data_sources_helper import Article, check_keywords
from web_scraping import sql
import time


def get_amazon_offers(store_id):
    offers = []
    article_name_list = []
    url = "https://www.amazon.de/s?k=virtual+reality+brille"
    headers = {
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 "
                      "(KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.3",
        "Accept-Language": "de-DE,de;q=0.9,en-US;q=0.8,en;q=0.7",
        "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,"
                  "image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9",
        "Connection": "keep-alive",
        "Accept-Charset": "ISO-8859-1,utf-8;q=0.7,*;q=0.3"
    }
    html = requests.get(url, headers=headers).text
    soup = BeautifulSoup(html, 'lxml')
    max_page_number = soup.find('ul', class_='a-pagination')
    max_page_number = int(max_page_number.find_all('li', class_='a-disabled')[1].text)
    for page in range(max_page_number):
        if page != 0:
            new_url = f"{url}&page={page + 1}"
            time.sleep(1)  # waiting time to prevent the ip from being blocked
            html = requests.get(new_url, headers=headers).text
            soup = BeautifulSoup(html, 'lxml')
        soup = soup.find('div', class_='s-main-slot s-result-list s-search-results sg-row')
        soup = soup.find_all('div', class_='s-expand-height s-include-content-margin '
                                           's-border-bottom s-latency-cf-section')
        for article in soup:
            article_name = article.find('span', class_='a-size-base-plus a-color-base a-text-normal').text
            sale_price = article.find('span', class_='a-price-whole')
            keyword = check_keywords(article_name)
            if sale_price and keyword:
                category_id, article_name, regular_price = keyword
                sale_price = Decimal(sale_price.text.replace(',', '.'))
                if regular_price > sale_price > regular_price - regular_price / 3 and \
                        article_name not in article_name_list:
                    website_article_id = article.find('a', class_='a-link-normal a-text-normal')
                    website_article_id = website_article_id['href'].split("ref=")[0]
                    website_article_id = f"https://www.amazon.de{website_article_id}"
                    if "picassoRedirect" not in website_article_id:
                        article_name_list.append(article_name)
                        img_url = article.find('img')
                        img_url = img_url.get('srcset').split(",")[2].split(" ")[1]
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
    print("\nAmazon:\n")
    store_id = sql.get_store_id("Amazon")[0]
    offers = get_amazon_offers(store_id)
    return store_id, offers


if __name__ == "__main__":
    main()
