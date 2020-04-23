from bs4 import BeautifulSoup
import requests

source = requests.get('https://www.oculus.com/experiences/quest/').text
print(source)

soup = BeautifulSoup(source, 'lxml')
# games = soup.find_all('store-section-item__meta-name')

print(soup.prettify())
match = soup.find('div', class_='store-section-item__meta-name')
print(match)
