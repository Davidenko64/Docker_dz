#!/bin/python3
from flask import Flask

app = Flask(__name__)


@app.route('/')
def func1():
    html = "<H1>Hello!</H1>"
    return html


app.run(host="0.0.0.0", port=8087)
