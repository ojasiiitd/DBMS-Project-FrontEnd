from flask import render_template, flash, redirect, url_for, request
from app import app, mysql
import plotly.graph_objects as go


@app.route('/')
def homepage():
    return render_template("homepage.html", value="")


@app.route('/Students')
def showStudents():
    cur = mysql.connection.cursor()
    cur.execute("select * from Students")
    data = cur.fetchall()
    return render_template("students.html", info=data)


@app.route('/faculty')
def showFaculty():
    cur = mysql.connection.cursor()
    cur.execute("select * from Faculty")
    data = cur.fetchall()
    return render_template("faculty.html", info=data)


@app.route('/branch')
def showBranch():
    cur = mysql.connection.cursor()
    cur.execute("select * from Branch")
    data = cur.fetchall()
    return render_template("branch.html", info=data)


@app.route('/courses')
def showCourses():
    cur = mysql.connection.cursor()
    cur.execute("select * from Courses")
    data = cur.fetchall()
    return render_template("courses.html", info=data)


@app.route('/rooms')
def showRoom():
    cur = mysql.connection.cursor()
    cur.execute("select * from Room")
    data = cur.fetchall()
    return render_template("room.html", info=data)


@app.route('/fms')
def showFms():
    cur = mysql.connection.cursor()
    cur.execute("select * from FMS")
    data = cur.fetchall()
    return render_template("fms.html", info=data)


@app.route('/mess')
def showMess():
    cur = mysql.connection.cursor()
    cur.execute("select * from Mess")
    data = cur.fetchall()
    return render_template("mess.html", info=data)


@app.route('/feedback')
def showFeedback():
    cur = mysql.connection.cursor()
    cur.execute("select * from Requests_Complaints")
    data = cur.fetchall()
    return render_template("feedback.html", info=data)


@app.route('/queries')
def queries():
    cur = mysql.connection.cursor()
    cur.execute(
        "select * from (select Students.First_Name,Last_Name,Students.RollNo,takes.CourseCode from Students join takes on Students.RollNo=takes.RollNo)   as T join  (select Students.First_Name,Last_Name,Students.RollNo,takes.CourseCode from Students join takes on Students.RollNo=takes.RollNo)    as R where R.RollNo  = T.RollNo  and R.CourseCode != T.CourseCode")
    data = []
    data.append(cur.fetchall())
    cur.execute(
        "select s.First_Name,s.Last_Name from Students s where s.RollNo in (select T.RollNo from  takes as T join takes as R where R.RollNo  = T.RollNo  and R.CourseCode != T.CourseCode)")
    data.append(cur.fetchall())
    cur.execute(
        "select EmployeeID,RC.RequestID,Hostel from FMS join Requests_Complaints RC on FMS.RequestID = RC.RequestID where RC.CurrStatus=\"InProgress\" ")
    data.append(cur.fetchall())
    cur.execute(
        "select * from takes join Students S on takes.RollNo = S.RollNo where takes.CourseCode=\"CSE327\" and takes.Semester=3 and takes.Grade>8")
    data.append(cur.fetchall())
    cur.execute(
        "Select Count(Students.RollNo), Branch.BranchID, Branch.Name From Students INNER JOIN Branch ON Students.BranchID=Branch.BranchID Group By Branch.BranchID")
    data.append(cur.fetchall())
    cur.execute(
        "Select Students.RollNo, TAsin.CourseCode from Students LEFT JOIN  TAsin ON Students.RollNo=TAsin.RollNo")
    data.append(cur.fetchall())
    cur.execute(
        "Select Requests_Complaints.RequestID,Requests_Complaints.CurrStatus, Students.First_Name from Students Right join Requests_Complaints  on Students.RollNo=Requests_Complaints.RollNo where CurrStatus=\"InProgress\"")
    data.append(cur.fetchall())
    cur.execute(
        "Select a.CourseCode, a.PrereqCode,b.PrereqCode from prereq a, prereq b where a.PrereqCode=b.CourseCode")
    data.append(cur.fetchall())
    cur.execute(
        "SELECT S1.RollNo, CONCAT(S1.First_Name, ' ', S1.Last_Name) Name, S1.Hostel_ID FROM Students S1 INNER JOIN Students S2 on S2.RollNo = '2018776' AND S2.Hostel_ID = S1.Hostel_ID")
    data.append(cur.fetchall())
    cur.execute(
        "SELECT R.RollNo, First_Name, Last_Name, Hostel_ID FROM Requests_Complaints R LEFT JOIN Students S ON R.RollNo = S.RollNo")
    data.append(cur.fetchall())
    cur.execute(
        "Select count(TAsin.RollNo), Courses.FacultyID from TAsin INNER JOIN Courses ON Courses.CourseCode=TAsin.CourseCode group by Courses.FacultyID")
    data.append(cur.fetchall())
    cur.execute(
        "Select Students.MessID,Students.RollNo,Mess.Menu from Students CROSS JOIN Mess ON Students.MessID=Mess.MessID LIMIT 10")
    data.append(cur.fetchall())
    cur.execute(
        "Select takes.CourseCode ,takes.Grade, Students.RollNo, Students.First_Name,Students.Last_Name from takes JOIN Students ON takes.RollNo=Students.RollNo")
    data.append(cur.fetchall())
    cur.execute("DROP VIEW IF EXISTS `studentcourses`")
    cur.execute(
        "create view studentcourses as select Students.First_Name,Students.Last_Name,Students.RollNo,takes.CourseCode,Students.CurrentSemester from Students join takes on Students.RollNo=takes.RollNo")
    cur.execute(
        "select T.First_Name,T.Last_Name,T.RollNo,T.CourseCode from studentcourses as T join studentcourses s  where s.First_Name=\"Kariane\" and T.CurrentSemester=s.CurrentSemester and T.First_Name!=\"Kariane\" and T.CourseCode=\"CSE345\"")
    data.append(cur.fetchall())
    cur.execute(
        "select * from   (select Students.First_Name,Students.Last_Name,Students.RollNo,takes.CourseCode from Students join takes on Students.RollNo=takes.RollNo)   as T join  (select students.First_Name,Last_Name,students.RollNo,takes.CourseCode from Students students join takes on students.RollNo=takes.RollNo)    as R where R.RollNo  = T.RollNo  and R.CourseCode != T.CourseCode")
    data.append(cur.fetchall())

    return render_template("queries.html", info=data)


@app.route('/visualize')
def enterInfo():
    return render_template("visualize.html")


@app.route('/show', methods=['GET', 'POST'])
def showVisualizations():
    # Sems with different years data : CSE413,CSE346,CSE243
    # print(request)
    if request.method == 'POST':
        if 'code' in request.form.keys():
            genGraph(request.form['code'])
        if 'facid' in request.form.keys():
            coursePerformace(request.form['facid'])
    return render_template('visualize2.html')


def genGraph(currCourse):
    curr = mysql.connection.cursor()
    curr.execute("select * from takes where CourseCode='%s'" % currCourse);
    data = curr.fetchall()
    curr.close()
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


def coursePerformace(fac_id):
    curr = mysql.connection.cursor()
    curr.execute("select Courses.CourseCode from DBMS.Courses where Courses.FacultyID='%s';" % fac_id)
    data = curr.fetchall()
    curr.close()
    lines = []

    for currCourse in data:
        currCourse = currCourse['CourseCode']
        curr = mysql.connection.cursor()
        curr.execute("select * from takes where CourseCode='%s'" % currCourse);
        data = curr.fetchall()
        curr.close()
        semsToGrades = {}
        for i in data:
            course = i['CourseCode']
            sem = i['Semester']
            grade = int(i['Marks'])
            # print(sem, grade)
            semsToGrades[sem] = semsToGrades.get(sem, []) + [grade]
        for i in semsToGrades:
            semsToGrades[i] = sum(semsToGrades[i]) / len(semsToGrades)
        xlist=sorted(list(semsToGrades.keys()))
        ylist=[semsToGrades[i] for i in xlist]
        lines.append(go.Scatter(name=currCourse, x=xlist, y=ylist,
                                mode='lines+markers'))
    fig = go.Figure(data=lines)
    fig.update_layout(title='Average Marks Vs Semesters of your Course',
                      xaxis_title='Semesters',
                      yaxis_title='Marks')

    # fig.show()
    fig.write_html('app/templates/visualize2.html')


def CollegePerformace():
    curr = mysql.connection.cursor()
    curr.execute("select ")
