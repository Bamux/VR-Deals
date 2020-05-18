from flask_frozen import Freezer
from flask_vrdeals import app

freezer = Freezer(app)


@freezer.register_generator
def index():  # endpoint defaults to the function name
    # `values` dicts
    yield {'page': '2'}


if __name__ == '__main__':
    freezer.freeze()
