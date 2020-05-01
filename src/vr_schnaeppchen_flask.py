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
    SELECT article_name, sale_price, regular_price FROM current_offers 
    INNER JOIN articles ON articles.id = current_offers.article_id''')
    # return render_template('layout.html')
    return render_template('home.html', articles=cursor.fetchall())


if __name__ == '__main__':
    app.run(debug=True)
