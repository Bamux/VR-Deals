from web_scraping.data_sources import humble_bundle
from web_scraping.data_sources import oculus
from web_scraping.data_sources import steam


def get_offers():
    offers_list = [humble_bundle.main(), steam.main()]
    offers_list.extend(oculus.main())
    return offers_list


if __name__ == "__main__":
    get_offers()
