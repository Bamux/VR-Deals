"""Gets the data from the oculus store via web scraping with the selenium library."""
from decimal import Decimal
from pathlib import Path

from selenium import webdriver
from selenium.webdriver.chrome.options import Options

from settings import chromedriver_executable_path


def oculus_store(store):
    """Returns the oculus store offers for Quest, Rift and Go."""
    offers = []
    store_id, store, url = store
    if "Quest" in store:
        element = 'store-section-items'
    else:
        element = 'section__items'

    print(f'The script searches for current offers in the {store}.\n{url}')
    chrome_options = Options()
    chrome_options.add_argument("--headless")
    chrome_options.add_argument("--window-size=1920x1080")
    driver = webdriver.Chrome(options=chrome_options,
                              executable_path=chromedriver_executable_path)
    driver.implicitly_wait(10)
    driver.get(url)
    sales = driver.find_element_by_class_name(element)
    urls = sales.find_elements_by_class_name('store-section-item-tile')
    game_titles = sales.find_elements_by_class_name('store-section-item__meta-name')
    sale_prices = sales.find_elements_by_class_name('store-section-item-price-label__sale-price')
    regular_prices = sales.find_elements_by_class_name(
        'store-section-item-price-label__strikethrough-price')
    for url, article_name, sale_price, regular_price in zip(
            urls, game_titles, sale_prices, regular_prices):
        website_article_id = url.get_attribute("href").rpartition("/")[2]
        sale_price = Decimal(sale_price.text.split(" ")[0].replace(',', '.'))
        regular_price = Decimal(regular_price.text.split(" ")[0].replace(',', '.'))
        img_url = url.get_attribute("style").split('"')[1]
        offers.append({"store_id": store_id, "website_article_id": int(website_article_id),
                       "article_name": article_name.text, "regular_price": regular_price,
                       "sale_price": sale_price, "img_url": img_url})
        print(article_name.text, ":", sale_price, "€")
    driver.close()
    driver.quit()
    return offers


def main(store):
    """Checks if the chromedriver is present, collects the offers from oculus and returns them."""
    offers = []
    chromedriver = Path(chromedriver_executable_path).is_file()
    if chromedriver:
        offers = oculus_store(store)
    else:
        print("Could not find the chromedriver.exe please check your "
              "chromedriver_executable_path in the settings.py")
    return offers
