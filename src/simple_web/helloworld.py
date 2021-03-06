#!/usr/bin/env python

from bottle import route, run, template


@route('/hello/<name>')
def index(name):
    return template('<b>Hello {{name}}</b>!', name=name)


@route('/')
def hello():
    return "Hello World!\n"


run(host='0.0.0.0', port=3000)
