from flask import render_template , flash , redirect , url_for , request
from app import app , mysql
import plotly.graph_objects as go

@app.route('/')
def homepage() :
    return render_template("homepage.html" , value = "")

@app.route('/Students')
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

@app.route('/queries')
def queries() :
    cur = mysql.connection.cursor()
    cur.execute("select * from (select Students.First_Name,Last_Name,Students.RollNo,takes.CourseCode from Students join takes on Students.RollNo=takes.RollNo)   as T join  (select Students.First_Name,Last_Name,Students.RollNo,takes.CourseCode from Students join takes on Students.RollNo=takes.RollNo)    as R where R.RollNo  = T.RollNo  and R.CourseCode != T.CourseCode")
    data = []
    data.append(cur.fetchall())
    cur.execute("select s.First_Name,s.Last_Name from Students s where s.RollNo in (select T.RollNo from  takes as T join takes as R where R.RollNo  = T.RollNo  and R.CourseCode != T.CourseCode)")
    data.append(cur.fetchall())
    cur.execute("select EmployeeID,RC.RequestID,Hostel from FMS join Requests_Complaints RC on FMS.RequestID = RC.RequestID where RC.CurrStatus=\"InProgress\" ")
    data.append(cur.fetchall())
    cur.execute("select * from takes join Students S on takes.RollNo = S.RollNo where takes.CourseCode=\"CSE327\" and takes.Semester=3 and takes.Grade>8")
    data.append(cur.fetchall())

    print(len(data))
    print(data)
    
    return render_template("queries.html" , info = data)

@app.route('/visualize')
def enterInfo():
    return render_template("visualize.html")


@app.route('/show', methods=['GET', 'POST'])
def showVisualizations():
    # Sems with different years data : CSE413,CSE346,CSE243
    # print(request)
    if request.method == 'POST':
        genGraph(request.form['code'])
    return render_template('visualize2.html')


def genGraph(currCourse):
    curr = mysql.connection.cursor()
    curr.execute("select * from takes where CourseCode='%s'" % currCourse);
    data = curr.fetchall()
    semsToGrades = {}
    for i in data:
        course = i['CourseCode']
        sem = i['Semester']
        grade = int(i['Marks'])
        # print(sem, grade)
        semsToGrades[sem] = semsToGrades.get(sem, []) + [grade]
    print(semsToGrades)
    # avgs = {sem: sum(semsToGrades[sem]) / len(semsToGrades[sem]) for sem in semsToGrades.keys()}
    mins = {sem: min(semsToGrades[sem]) for sem in semsToGrades.keys()}
    maxs = {sem: max(semsToGrades[sem]) for sem in semsToGrades.keys()}
    # data_canada = px.data.gapminder().query("country == 'Canada'")

    fig = go.Figure(data=[
        go.Bar(name='Max Grade', x=list(semsToGrades.keys()), y=list(maxs.values()), textposition='auto'),
        go.Bar(name='Min Grade', x=list(semsToGrades.keys()), y=list(mins.values()))
    ])
    fig.update_layout(title_text=currCourse + " Visualizations!")
    # fig.show()
    fig.write_html('app/templates/visualize2.html')