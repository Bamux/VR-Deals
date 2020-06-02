from flask_frozen import Freezer
from flask_vrdeals import app, database

freezer = Freezer(app)


@freezer.register_generator
def index():  # endpoint defaults to the function name
    # `values` dicts
    yield {'page': '2'}


@freezer.register_generator
def disqus():
    article_ids = database.disqus_ids()
    for article_id in article_ids:
        yield {'item_id': article_id[0]}


if __name__ == '__main__':
    freezer.freeze()
