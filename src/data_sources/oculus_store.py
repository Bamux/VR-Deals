"""Requires the external library selenium."""
from pathlib import Path
from decimal import Decimal
from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from src import sql
import settings


def oculus_store(headset_id, store, url):
    """
    Gets the data from the oculus store via web scraping with the selenium library.

    :param headset_id: database id of the headset
    :param store: name of the store
    :param url: url to the store
    :returns: [(store_id, game_title, sale_price, regular_price, headset)]
    """
    offers = []
    if store == "Oculus Quest Store":
        element = 'store-section-items'
    else:
        element = 'section__items'

    print(f'The script searches for current offers in the {store}.\n{url}')
    chrome_options = Options()
    chrome_options.add_argument("--headless")
    chrome_options.add_argument("--window-size=1920x1080")
    driver = webdriver.Chrome(options=chrome_options, executable_path=settings.chromedriver_executable_path)
    driver.implicitly_wait(10)
    driver.get(url)
    sales = driver.find_element_by_class_name(element)
    store_ids = sales.find_elements_by_class_name('store-section-item-tile')
    game_titles = sales.find_elements_by_class_name('store-section-item__meta-name')
    sale_prices = sales.find_elements_by_class_name('store-section-item-price-label__sale-price')
    regular_prices = sales.find_elements_by_class_name(
        'store-section-item-price-label__strikethrough-price')
    for store_id, game_title, sale_price, regular_price in zip(
            store_ids, game_titles, sale_prices, regular_prices):
        store_id = store_id.get_attribute("href").rpartition("/")[2]
        sale_price = Decimal(sale_price.text.split(" ")[0].replace(',', '.'))
        regular_price = Decimal(regular_price.text.split(" ")[0].replace(',', '.'))
        offers.append((int(store_id), game_title.text, sale_price, regular_price, headset_id))
        print(game_title.text, ":", sale_price, "€")
    driver.close()
    driver.quit()
    return offers


def main():
    """
    Returns the oculus store offers for Quest, Rift and Go.

    :returns: [(store_id, game_title, sale_price, regular_price, headset)]
    """
    stores = sql.get_oculus_stores()
    offers = []
    for headset_id, store, url in stores:
        offers.extend(oculus_store(headset_id, store, url))
        break
    return offers


if __name__ == "__main__":
    main()
