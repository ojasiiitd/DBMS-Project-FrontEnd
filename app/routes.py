
from flask import render_template , flash , redirect , url_for , request
from app import app
from app import app, db

@app.route('/')
def homepage():
    return render_template("index.html")