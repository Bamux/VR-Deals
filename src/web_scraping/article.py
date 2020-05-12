from decimal import Decimal


class Article:
    def __init__(
            self,
            article_id,
            store_id,
            website_article_id,
            article_name,
            regular_price,
            sale_price,
            img_url
    ):
        self.article_id = article_id
        self.store_id = int(store_id)
        self.website_article_id = str(website_article_id)
        self.article_name = str(article_name)
        self.regular_price = Decimal("%.2f" % regular_price)
        self.sale_price = Decimal("%.2f" % sale_price)
        self.img_url = img_url

    def print_offer(self):
        print(self.article_name, "-", self.sale_price, "€")
