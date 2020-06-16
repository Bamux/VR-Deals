from decimal import Decimal

import requests
from bs4 import BeautifulSoup

from web_scraping import sql
from web_scraping.data_sources_helper import Article, check_keywords


def get_offers(store_id):
    urls = [
        "https://www.mediamarkt.de/de/category/_virtual-reality-605009.html",
        "https://www.mediamarkt.de/de/category/_playstation-vr-644026.html"
    ]
    offers = []
    article_name_list = []
    for url in urls:
        html = requests.get(url).text
        soup = BeautifulSoup(html, 'lxml')
        soup = soup.find_all('div', class_='ProductFlexBox__StyledListItem-sc-1uv4iye-0 dxdiRp')
        for article in soup:
            sale_price = article.find_all('div', class_='ToolTipstyled__StyledTooltipWrapper-y9fa2q-0 cvdMtg')
            article_name = article.find('p', class_='Typostyled__StyledInfoTypo-sc-5k7scz-0 fAKyV')
            if not article_name:
                continue
            article_name = article_name.text
            keyword = check_keywords(article_name)
            if sale_price and keyword:
                if len(sale_price) > 1:
                    sale_price = sale_price[1]
                else:
                    sale_price = sale_price[0]
                sale_price = sale_price.text.replace('–', '00')
                sale_price = Decimal(sale_price.replace(',', '.'))
                category_id, article_name, regular_price = keyword
                if regular_price > sale_price > regular_price - regular_price / 3 and \
                        article_name not in article_name_list:
                    article_name_list.append(article_name)
                    website_article_id = article.find('a')
                    website_article_id = website_article_id['href']
                    website_article_id = f"https://www.mediamarkt.de{website_article_id}"
                    img_url = article.find('img')
                    img_url = img_url.get('src').split("mobile")[0]
                    img_url += "fee_786_587_png"
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
    print("\nMediamarkt:\n")
    store_id = sql.get_store_id("Mediamarkt")[0]
    offers = get_offers(store_id)
    return store_id, offers


if __name__ == "__main__":
    main()
