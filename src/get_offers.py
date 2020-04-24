"""The data sources that are used to obtain the current offers."""
import data_sources


def expand_offers(offers, new_offers):
    if offers and new_offers:
        offers.expand(new_offers)
    elif new_offers:
        offers = new_offers
    return offers


def main():
    """
    Get the offers from different date sources.

    :returns: [(store_id, title, sale_price, regular_price, headset)]
    """

    offers = data_sources.alternate.main()
    offers = expand_offers(offers, data_sources.amazon.main())
    offers = expand_offers(offers, data_sources.oculus_store.main())
    offers = expand_offers(offers, data_sources.steam_store.main())
    return offers


if __name__ == "__main__":
    main()
