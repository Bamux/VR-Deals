from flask import render_template

from flask_vrdeals import app, database


@app.route("/")
@app.route("/home")
def home():
    offers, pagination = database.offers_pagination()
    return render_template('content.html', page_navigation="Home", offers=offers, pagination=pagination)


@app.route("/oculus")
def oculus():
    offers, pagination = database.offers_pagination("Oculus")
    return render_template('content.html', page_navigation="Oculus", offers=offers, pagination=pagination)


@app.route("/steam")
def steam():
    offers, pagination = database.offers_pagination("Steam")
    return render_template('content.html', page_navigation="Steam", offers=offers, pagination=pagination)
