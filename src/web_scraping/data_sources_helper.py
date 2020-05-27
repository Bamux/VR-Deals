from decimal import Decimal
from web_scraping import sql


key_words = sql.get_keywords()


class Article:
    def __init__(
            self,
            article_id,
            store_id,
            category_id,
            website_article_id,
            article_name,
            regular_price,
            sale_price,
            img_url
    ):
        self.article_id = article_id
        self.store_id = int(store_id)
        self.category_id = int(category_id)
        self.website_article_id = str(website_article_id)
        self.article_name = str(article_name)
        self.regular_price = Decimal("%.2f" % regular_price)
        self.sale_price = Decimal("%.2f" % sale_price)
        self.img_url = img_url

    def print_offer(self):
        print(self.article_name, "-", self.sale_price, "€")


def check_keywords(article_name):
    keyword = ()
    article_name = article_name.lower()
    for category_id, words, regular_price in key_words:
        words_list = words.split(" ")
        for word in words_list:
            if word.lower() not in article_name:
                break
        else:
            keyword = (category_id, words, regular_price)
    return keyword
