from web_scraping.data_sources import amazon, humble_bundle, netgames, mediamarkt, oculus, saturn, playstation, steam


def get_all_offers():
    offers_list = [
        steam.main(),
        amazon.main(),
        mediamarkt.main(),
        # saturn.main(),
        netgames.main(),
        humble_bundle.main(),
        playstation.main(),
    ]
    offers_list.extend(oculus.main())
    return offers_list


if __name__ == "__main__":
    get_all_offers()
