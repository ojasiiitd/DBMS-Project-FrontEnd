from flask import render_template , flash , redirect , url_for , request
from app import app , mysql

@app.route('/')
def homepage() :
    cur = mysql.connection.cursor()
    cur.execute("select * from Branch")
    rv = str(cur.fetchall())
    return render_template("index.html" , value = rv)