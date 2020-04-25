import plotly.graph_objects as go
def genGraph(currCourse):

	data = curr.fetchall()
	d={}
	semsToGrades={}
	for i in data:
		course=i['CourseCode']
		sem=i['Semester']
		if course==currCourse:
			semsToGrades[sem]=semsToGrades.get('sem',[])+course
	avgs={course:sum(semsToGrades[course])/len(x) for course in semsToGrades.keys()}
	mins={course:min(semsToGrades[course]) for course in semsToGrades.keys()}
	maxs={course:max(semsToGrades[course]) for course in semsToGrades.keys()}
	# data_canada = px.data.gapminder().query("country == 'Canada'")

	fig = go.Figure(data=[
	    go.Bar(name='Max Grade', x=list(semsToGrades.keys()), y=maxs.values(),textposition='auto'),
	    go.Bar(name='Min Grade', x=list(semsToGrades.keys()), y=mins.values())
	])
	fig.update_layout(title_text=currCourse+" Visualizations!")

	fig.show()