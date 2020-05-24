from flask import render_template

from flask_vrdeals import app, database


def create_website(page, page_navigation):
    offers, pages, data_to_show = database.offers_pagination(page, page_navigation)
    return render_template('content.html', page_navigation=page_navigation, offers=offers,
                           pages=pages, data_to_show=data_to_show)


@app.route("/", defaults={'page': 1})
@app.route("/page-<int:page>/")
def index(page):
    return create_website(page, "Home")


@app.route("/humble/", defaults={'page': 1})
@app.route("/humble/page-<int:page>/")
def humble(page):
    return create_website(page, "Humble Bundle")


@app.route("/oculus/", defaults={'page': 1})
@app.route("/oculus/page-<int:page>/")
def oculus(page):
    return create_website(page, "Oculus")


@app.route("/steam/", defaults={'page': 1})
@app.route("/steam/page-<int:page>/")
def steam(page):
    return create_website(page, "Steam")
