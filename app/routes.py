from flask import render_template , flash , redirect , url_for , request
from app import app , mysql

@app.route('/')
def homepage() :
    return render_template("homepage.html" , value = "")

@app.route('/students')
def showStudents() :
    cur = mysql.connection.cursor()
    cur.execute("select * from Students")
    data = cur.fetchall()
    return render_template("students.html" , info = data)

@app.route('/faculty')
def showFaculty() :
    cur = mysql.connection.cursor()
    cur.execute("select * from Faculty")
    data = cur.fetchall()
    return render_template("faculty.html" , info = data)