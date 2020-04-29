from flask import Flask, render_template

app = Flask(__name__)

card_title = "Card Title"
card = "This is a wider card with supporting text below as a natural lead-in to " \
       "additional content. This content is a little bit longer."


@app.route("/")
def home():
    return render_template('home.html', card_title=card_title, card=card)


if __name__ == '__main__':
    app.run()
