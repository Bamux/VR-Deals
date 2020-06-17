from flask import render_template

from flask_vrdeals import app, database


def create_website(page, page_navigation):
    offers, pages, data_to_show = database.offers_pagination(page, page_navigation)
    return render_template('content.html', page_navigation=page_navigation, offers=offers,
                           pages=pages, data_to_show=data_to_show)


@app.route("/", defaults={'page': 1})
@app.route("/page-<int:page>/")
def index(page):
    return create_website(page, "Alle Stores")


@app.route("/humble/", defaults={'page': 1})
@app.route("/humble/page-<int:page>/")
def humble(page):
    return create_website(page, "Humble Bundle")


@app.route("/oculus/", defaults={'page': 1})
@app.route("/oculus/page-<int:page>/")
def oculus(page):
    return create_website(page, "Oculus")


@app.route("/playstation/", defaults={'page': 1})
@app.route("/playstation/page-<int:page>/")
def playstation(page):
    return create_website(page, "PlayStation")


@app.route("/steam/", defaults={'page': 1})
@app.route("/steam/page-<int:page>/")
def steam(page):
    return create_website(page, "Steam")


@app.route("/headset/", defaults={'page': 1})
@app.route("/headset/page-<int:page>/")
def headset(page):
    return create_website(page, "Headsets")


@app.route("/accessories/", defaults={'page': 1})
@app.route("/accessories/page-<int:page>/")
def accessories(page):
    return create_website(page, "Zubehör")


@app.route("/hardware/")
def hardware():
    offers = database.hardware_recommendations()
    return render_template('hardware.html', page_navigation="Hardware", offers=offers)


@app.route("/statistics/")
def statistics():
    return render_template('statistics.html', page_navigation="Statistiken")


@app.route("/disqus/id-<int:item_id>/")
def disqus(item_id):
    article_name, offers = database.disqus(item_id)
    return render_template('disqus.html', item_id=item_id, page_navigation="Disqus",
                           article_name=article_name, offers=offers)
#
#
@app.route("/search/")
def search():
    return render_template('search.html', page_navigation="Search")
