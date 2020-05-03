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


@app.route("/")
@app.route("/home")
def home():
    cursor.execute('''
    SELECT article_name, regular_price, sale_price, img_url FROM current_offers 
    INNER JOIN articles ON articles.id = current_offers.article_id
    LIMIT 34''')
    return render_template('home.html', articles=cursor.fetchall())


@app.route("/quest")
def oculus():
    cursor.execute('''
    SELECT article_name, regular_price, sale_price, img_url FROM current_offers 
    INNER JOIN articles ON articles.id = current_offers.article_id
    INNER JOIN stores ON stores.id = articles.store_id
    WHERE name="Oculus Quest"
    LIMIT 34
    ''')
    return render_template('quest.html', articles=cursor.fetchall())


@app.route("/rift")
def rift():
    cursor.execute('''
    SELECT article_name, regular_price, sale_price, img_url FROM current_offers 
    INNER JOIN articles ON articles.id = current_offers.article_id
    INNER JOIN stores ON stores.id = articles.store_id
    WHERE name="Oculus Rift"
    LIMIT 34
    ''')
    return render_template('rift.html', articles=cursor.fetchall())


@app.route("/go")
def go():
    cursor.execute('''
    SELECT article_name, regular_price, sale_price, img_url FROM current_offers 
    INNER JOIN articles ON articles.id = current_offers.article_id
    INNER JOIN stores ON stores.id = articles.store_id
    WHERE name="Oculus Go"
    LIMIT 34
    ''')
    return render_template('go.html', articles=cursor.fetchall())


@app.route("/valve")
def valve():
    return render_template('valve.html')


@app.route("/htc")
def htc():
    return render_template('htc.html')


@app.route("/wmr")
def wmr():
    return render_template('wmr.html')


@app.route("/psvr")
def psvr():
    return render_template('psvr.html')


if __name__ == '__main__':
    app.run(debug=True)
