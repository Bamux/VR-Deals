"""The current data sources are the Oculus and Steam Store"""
from data_sources import oculus_store


def main():
    """
    Get the offers from different date sources.

    :returns: [(store_id, game_title, sale_price, regular_price, headset)]
    """
    games = oculus_store.main()
    # games.expand(steam_store.main())
    return games


if __name__ == "__main__":
    main()
