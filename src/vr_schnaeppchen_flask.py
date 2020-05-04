from flask import Flask, render_template
from flaskext.mysql import MySQL
import settings

app = Flask(__name__)
mysql = MySQL()
app.config['MYSQL_DATABASE_HOST'] = 'localhost'
app.config['MYSQL_DATABASE_USER'] = settings.user
app.config['MYSQL_DATABASE_PASSWORD'] = settings.passwd
app.config['MYSQL_DATABASE_DB'] = settings.database
mysql.init_app(app)
conn = mysql.connect()
cursor = conn.cursor()


def sql_store(store=""):
    offers = []
    if store:
        store = f'''WHERE name="{store}" '''
    sql = f'''
    SELECT stores.name, article_name, regular_price, sale_price, img_url FROM current_offers 
    INNER JOIN articles ON articles.id = current_offers.article_id 
    INNER JOIN stores ON stores.id = articles.store_id {store}
    Order by date_time DESC'''
    cursor.execute(sql)
    for offer in cursor.fetchall():
        store_name, article_name, regular_price, sale_price, img_url = offer
        offers.append({"store_name": store_name, "article_name": article_name, "regular_price": regular_price,
                       "sale_price": sale_price, "img_url": img_url})
    return offers


@app.route("/")
@app.route("/home")
def home():
    offers = sql_store()
    return render_template('content.html', page="home", offers=offers)


@app.route("/quest")
def oculus():
    offers = sql_store("Oculus Quest Store")
    return render_template('content.html', page="Oculus Quest", offers=offers)


@app.route("/rift")
def rift():
    offers = sql_store("Oculus Rift Store")
    return render_template('content.html', page="Oculus Rift", offers=offers)


@app.route("/go")
def go():
    offers = sql_store("Oculus Go Store")
    return render_template('content.html', page="Oculus Go", offers=offers)


@app.route("/steam")
def valve():
    return render_template('content.html', page="Steam")


@app.route("/htc")
def htc():
    return render_template('content.html', page="HTC")


@app.route("/wmr")
def wmr():
    return render_template('content.html', page="WMR")


@app.route("/psvr")
def psvr():
    return render_template('content.html', page="PSVR")


if __name__ == '__main__':
    app.run(debug=True)
