from flask import render_template

from flask_vrdeals import app, database


@app.route("/", defaults={'page': 1})
@app.route("/page-<int:page>/")
def index(page):
    offers, pages, data_to_show = database.offers_pagination(page)
    return render_template('content.html', page_navigation="Home", offers=offers,
                           pages=pages, data_to_show=data_to_show)


@app.route("/humble/", defaults={'page': 1})
@app.route("/humble/page-<int:page>/")
def humble(page):
    offers, pages, data_to_show = database.offers_pagination(page, "Humble Bundle")
    return render_template('content.html', page_navigation="Humble Bundle", offers=offers,
                           pages=pages, data_to_show=data_to_show)


@app.route("/oculus/", defaults={'page': 1})
@app.route("/oculus/page-<int:page>/")
def oculus(page):
    offers, pages, data_to_show = database.offers_pagination(page, "Oculus")
    return render_template('content.html', page_navigation="Oculus", offers=offers,
                           pages=pages, data_to_show=data_to_show)


@app.route("/steam/", defaults={'page': 1})
@app.route("/steam/page-<int:page>/")
def steam(page):
    offers, pages, data_to_show = database.offers_pagination(page, "Steam")
    return render_template('content.html', page_navigation="Steam", offers=offers,
                           pages=pages, data_to_show=data_to_show)


# @app.errorhandler(404)
# def not_found():
#     """Page not found."""
#     return make_response(render_template("404.html"), 404)
#
#
# @app.errorhandler(400)
# def bad_request():
#     """Bad request."""
#     return make_response(render_template("400.html"), 400)
#
#
# @app.errorhandler(500)
# def server_error():
#     """Internal server error."""
#     return make_response(render_template("500.html"), 500)
