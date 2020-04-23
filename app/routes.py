from flask import render_template , flash , redirect , url_for , request
from app import app , mysql

# cur = mysql.connection.cursor()
# cur.execute("select First_Name , Grade from Students where Grade < 5.25")
# rv = str(cur.fetchall())

@app.route('/')
def homepage() :
    return render_template("homepage.html" , value = "")

@app.route('/students')
def showStudents() :
    return render_template("students.html" , value = "")