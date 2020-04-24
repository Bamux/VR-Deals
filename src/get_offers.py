"""The current data sources are the Oculus and Steam Store"""
from data_sources import oculus_store


def main():
    """
    Get the offers from different date sources.

    :returns: [(headset, store_id, game_title, sale_price, regular_price)]
    """
    games = oculus_store.main()
    # games.expand(steam_store.main())
    return games


if __name__ == "__main__":
    main()
