import requests
from bs4 import BeautifulSoup


key_words = [
    ("Quest", "64", "GB"),
    ("Quest", "128", "GB"),
    ("PlayStation", "VR")
]

url = "https://www.mediamarkt.de/de/category/_virtual-reality-605009.html"


def check_keywords(article_name):
    found = False
    article_name = article_name.lower()
    for words in key_words:
        for word in words:
            if word.lower() not in article_name:
                break
        else:
            found = True
    return found


def get_offers():
    html = requests.get(url).text
    soup = BeautifulSoup(html, 'lxml')
    test = soup.find_all('div', class_='Cardstyled__StyledCardWrapper-sc-137rc73-5 bOprNX')
    for item in test:
        sale_price = item.find('span', class_='Typostyled__StyledInfoTypo-sc-5k7scz-0 cvCpfz')
        article_name = item.find('p', class_='Typostyled__StyledInfoTypo-sc-5k7scz-0 fAKyV').text
        # print(article_name)
        if sale_price is not None and check_keywords(article_name):
            print(article_name, sale_price.text)
    # print(soup.prettify())


def main():
    get_offers()


if __name__ == "__main__":
    main()
