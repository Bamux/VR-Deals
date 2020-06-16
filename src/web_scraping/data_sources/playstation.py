from web_scraping.data_sources import get_offers


def main():
    store = {
        "name": "PLayStation",
        "urls": ("https://store.playstation.com/de-de/grid/STORE-MSF75508-PLAYSTATIONVRHUB/",),
        "category": "software",
        "articles_find": ("div", "__desktop-presentation__grid-cell__base__0ba9f ember-view"),
        "max_page_find": ("div", "paginator-control__container"),
        "article_name_find": ("div", "grid-cell__title"),
        "regular_price_find": ("span", "price-display__strikethrough"),
        "sale_price_find": ("h3", "price-display__price"),
        "img_url_find": ("div", "product-image__img product-image__img--main"),
        "article_url": "https://store.playstation.com"
    }
    store_id, offers = get_offers.main(store)
    return store_id, offers


if __name__ == "__main__":
    main()
    get_offers.sql.conn_close()
