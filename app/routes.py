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

@app.route('/branch')
def showBranch() :
    cur = mysql.connection.cursor()
    cur.execute("select * from Branch")
    data = cur.fetchall()
    return render_template("branch.html" , info = data)

@app.route('/courses')
def showCourses() :
    cur = mysql.connection.cursor()
    cur.execute("select * from Courses")
    data = cur.fetchall()
    return render_template("courses.html" , info = data)

@app.route('/rooms')
def showRoom() :
    cur = mysql.connection.cursor()
    cur.execute("select * from Room")
    data = cur.fetchall()
    return render_template("room.html" , info = data)

@app.route('/fms')
def showFms() :
    cur = mysql.connection.cursor()
    cur.execute("select * from FMS")
    data = cur.fetchall()
    return render_template("fms.html" , info = data)

@app.route('/mess')
def showMess() :
    cur = mysql.connection.cursor()
    cur.execute("select * from Mess")
    data = cur.fetchall()
    return render_template("mess.html" , info = data)

@app.route('/feedback')
def showFeedback() :
    cur = mysql.connection.cursor()
    cur.execute("select * from Requests_Complaints")
    data = cur.fetchall()
    return render_template("feedback.html" , info = data)