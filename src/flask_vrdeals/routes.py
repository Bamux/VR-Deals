from flask import render_template  # , make_response

from flask_vrdeals import app, database


# @app.route("/")
# def index():
#     offers, pagination = database.offers_pagination()
#     return render_template('content.html', page_navigation="Home", offers=offers, pagination=pagination)

@app.route("/", defaults={'page': 1})
@app.route("/<int:page>/")
def index(page):
    if page > 0:
        offers, pages, data_to_show = database.offers_pagination(page)
        return render_template('content.html', page_navigation="Home", offers=offers,
                               pages=pages, data_to_show=data_to_show)
    else:
        return "<h1>Error</h1>"


@app.route("/humble/", defaults={'page': 1})
@app.route("/humble/<int:page>/")
def humble(page):
    if page > 0:
        offers, pages, data_to_show = database.offers_pagination(page, "Humble Bundle")
        return render_template('content.html', page_navigation="Humble Bundle", offers=offers,
                               pages=pages, data_to_show=data_to_show)
    else:
        return "<h1>Error</h1>"


@app.route("/oculus/", defaults={'page': 1})
@app.route("/oculus/<int:page>/")
def oculus(page):
    if page > 0:
        offers, pages, data_to_show = database.offers_pagination(page, "Oculus")
        return render_template('content.html', page_navigation="Oculus", offers=offers,
                               pages=pages, data_to_show=data_to_show)
    else:
        return "<h1>Error</h1>"


@app.route("/steam/", defaults={'page': 1})
@app.route("/steam/<int:page>/")
def steam(page):
    if page > 0:
        offers, pages, data_to_show = database.offers_pagination(page, "Steam")
        return render_template('content.html', page_navigation="Steam", offers=offers,
                               pages=pages, data_to_show=data_to_show)
    else:
        return "<h1>Error</h1>"


# @app.route("/oculus/")
# def oculus():
#     # test = request.args.get('page', default=1, type=int)
#     # print(test)
#     offers, pagination = database.offers_pagination("Oculus")
#     return render_template('content.html', page_navigation="Oculus", offers=offers, pagination=pagination)
#
#
# @app.route("/steam/")
# def steam():
#     offers, pagination = database.offers_pagination("Steam")
#     return render_template('content.html', page_navigation="Steam", offers=offers, pagination=pagination)


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
