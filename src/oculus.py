from selenium import webdriver
from selenium.webdriver.chrome.options import Options


def oculus_store(headset):
    """Finds the current offers in the Oculus Store and returns them as a list"""
    games_list = []

    if headset == "Quest":
        url = 'https://www.oculus.com/experiences/quest/'
        element = 'store-section-items'
    elif headset == "Rift":
        url = 'https://www.oculus.com/experiences/rift/section/1578364258944223/'
        element = 'section__items'
    else:
        return games_list

    print(f'The script searches for current offers in the Oculus {headset} Store.\n{url}')
    chrome_options = Options()
    chrome_options.add_argument("--headless")
    chrome_options.add_argument("--window-size=1920x1080")
    path_chromedriver = '../chromedriver_win32/chromedriver.exe'
    driver = webdriver.Chrome(options=chrome_options, executable_path=path_chromedriver)
    driver.implicitly_wait(10)
    driver.get(url)
    sales = driver.find_element_by_class_name(element)
    game_ids = sales.find_elements_by_class_name('store-section-item-tile')
    game_titles = sales.find_elements_by_class_name('store-section-item__meta-name')
    sale_prices = sales.find_elements_by_class_name('store-section-item-price-label__sale-price')
    regular_prices = sales.find_elements_by_class_name('store-section-item-price-label__strikethrough-price')
    for game_id, game_title, sale_price, regular_price in zip(game_ids, game_titles, sale_prices, regular_prices):
        game_id = game_id.get_attribute("href").rpartition("/")[2]
        games_list.append((game_id, game_title.text, sale_price.text, regular_price.text))
        print(game_title.text, ":", sale_price.text)
    driver.close()
    driver.quit()
    return games_list


def main():
    headsets = ('Quest', 'Rift')
    games_list = []
    for headset in headsets:
        games_list.extend(oculus_store(headset))
    return games_list


if __name__ == "__main__":
    main()
