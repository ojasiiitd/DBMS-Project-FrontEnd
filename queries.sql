#Both the above queries return the number of students that have repeated a course
select * from   (select students.First_Name,Last_Name,students.RollNo,takes.CourseCode from students join takes on students.RollNo=takes.RollNo)   as T join  (select students.First_Name,Last_Name,students.RollNo,takes.CourseCode from students join takes on students.RollNo=takes.RollNo)    as R where R.RollNo  = T.RollNo  and R.CourseCode != T.CourseCode;

select s.First_Name,s.Last_Name from students s

where s.RollNo in
(
	select T.RollNo from  takes as T join takes as R where
	R.RollNo  = T.RollNo  and R.CourseCode != T.CourseCode
);

#employees who currently have Complaints InProgress
select EmployeeID,RC.RequestID,Hostel
from FMS join Requests_Complaints RC on FMS.RequestID = RC.RequestID where RC.CurrStatus="InProgress";

#Students who passed course CSE327 in semester 3
select * from takes join Students S on takes.RollNo = S.RollNo where takes.CourseCode="CSE327" and takes.Semester=3 and takes.Grade>8;

#BatchMates of Kariane , ie , same Semester, and taking Course="CSE345"
select T.First_Name,T.Last_Name,T.RollNo,T.CourseCode from studentcourses as T join studentcourses s  where s.First_Name="Kariane" and T.CurrentSemester=s.CurrentSemester and T.First_Name!="Kariane" and T.CourseCode="CSE345";
