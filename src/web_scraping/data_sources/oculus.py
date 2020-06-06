"""Gets the data from the oculus store via web scraping with the selenium library."""
import time
from decimal import Decimal

from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from webdriver_manager.chrome import ChromeDriverManager

from web_scraping import sql
from web_scraping.data_sources_helper import Article


def get_oculus_offers(store, category_id):
    """Returns the oculus store offers for Quest, Rift and Go."""
    offers = []
    store_id, store, url = store
    if "Quest" in store:
        element = 'store-section-items'
    else:
        element = 'section__items'

    print(f'\n{store}:\nThe data search may take a few seconds.\n')
    chrome_options = Options()
    chrome_options.add_argument("--headless")
    chrome_options.add_argument("--window-size=1920x1080")
    driver = webdriver.Chrome(ChromeDriverManager(log_level=0).install(), options=chrome_options)
    driver.implicitly_wait(5)
    driver.get(url)

    scroll_pause_time = 0.5

    # Get scroll height
    last_height = driver.execute_script("return document.body.scrollHeight")

    while True:
        # Scroll down to bottom
        driver.execute_script("window.scrollTo(0, document.body.scrollHeight);")

        # Wait to load page
        time.sleep(scroll_pause_time)

        # Calculate new scroll height and compare with last scroll height
        new_height = driver.execute_script("return document.body.scrollHeight")
        if new_height == last_height:
            break
        last_height = new_height

    sales = driver.find_element_by_class_name(element)
    urls = sales.find_elements_by_class_name('store-section-item-tile')
    game_titles = sales.find_elements_by_class_name('store-section-item__meta-name')
    sale_prices = sales.find_elements_by_class_name('store-section-item-price-label__sale-price')
    regular_prices = sales.find_elements_by_class_name(
        'store-section-item-price-label__strikethrough-price')
    for url, article_name, sale_price, regular_price in zip(
            urls, game_titles, sale_prices, regular_prices):
        website_article_id = url.get_attribute("href")
        sale_price = Decimal(sale_price.text.split(" ")[0].replace(',', '.'))
        regular_price = Decimal(regular_price.text.split(" ")[0].replace(',', '.'))
        img_url = url.get_attribute("style").split('"')[1]
        article_id = 0
        offer = Article(
            article_id,
            store_id,
            category_id,
            website_article_id,
            article_name.text,
            regular_price,
            sale_price,
            img_url,
        )
        offers.append(offer)
        offer.print_offer()
    driver.close()
    driver.quit()
    return store_id, offers


def main():
    offers_oculus_stores = []
    oculus_stores = ["Oculus Quest", "Oculus Rift", "Oculus Go"]
    category_id = sql.get_category_id("software")[0]
    for oculus_store in oculus_stores:
        store = sql.get_store_id(oculus_store)
        offers_oculus_stores.append(get_oculus_offers(store, category_id))
    return offers_oculus_stores


if __name__ == "__main__":
    main()
