from flask import render_template

from flask_vrdeals import app, database


@app.route("/")
@app.route("/home")
def home():
    offers, pagination = database.offers_pagination()
    return render_template('content.html', page_navigation="home", offers=offers, pagination=pagination)


@app.route("/oculus")
def oculus():
    offers, pagination = database.offers_pagination("Oculus")
    return render_template('content.html', page_navigation="Oculus Quest", offers=offers, pagination=pagination)
