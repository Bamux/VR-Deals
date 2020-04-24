"""Requires the external library selenium."""
from selenium import webdriver
from selenium.webdriver.chrome.options import Options


def oculus_store(headset):
    """
    Gets the data from the oculus store via web scraping with the selenium library.

    :param headset: Name of the headset
    :type headset: str
    :returns: [(store_id, game_title, sale_price, regular_price, headset)]
    """
    games = []
    element = 'section__items'
    if headset == "Quest":
        url = 'https://www.oculus.com/experiences/quest/'
        element = 'store-section-items'
    elif headset == "Rift":
        url = 'https://www.oculus.com/experiences/rift/section/1578364258944223/'
    elif headset == "Go":
        url = 'https://www.oculus.com/experiences/go/section/1500175860035862/'
    else:
        return games

    print(f'The script searches for current offers in the Oculus {headset} Store.\n{url}')
    chrome_options = Options()
    chrome_options.add_argument("--headless")
    chrome_options.add_argument("--window-size=1920x1080")
    driver = webdriver.Chrome(options=chrome_options,
                              executable_path='../chromedriver_win32/chromedriver.exe')
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
        games.append((store_id, game_title.text, sale_price.text, regular_price.text, headset))
        print(game_title.text, ":", sale_price.text)
    driver.close()
    driver.quit()
    return games


def main():
    """
    Returns the oculus store offers for Quest, Rift and Go.

    :returns: [(store_id, game_title, sale_price, regular_price, headset)]
    """
    headsets = ('Quest', 'Rift', 'Go')
    games = []
    for headset in headsets:
        games.extend(oculus_store(headset))
    return games


if __name__ == "__main__":
    main()
