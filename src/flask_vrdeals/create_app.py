from flask import Flask
from flaskext.mysql import MySQL

import settings

app = Flask(__name__)
mysql = MySQL()
app.config['MYSQL_DATABASE_HOST'] = settings.host
app.config['MYSQL_DATABASE_USER'] = settings.user
app.config['MYSQL_DATABASE_PASSWORD'] = settings.passwd
app.config['MYSQL_DATABASE_DB'] = settings.database
app.config['PAGE_SIZE'] = 20
app.config['VISIBLE_PAGE_COUNT'] = 10
app.config['FREEZER_BASE_URL'] = 'https://xyz/vrdeals/'
mysql.init_app(app)

if __name__ == '__main__':
    app.run(debug=True)
