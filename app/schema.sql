#
# TABLE STRUCTURE FOR: Branch
#

DROP TABLE IF EXISTS `Branch`;

CREATE TABLE `Branch` (
  `BranchID` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Cut_off` int(4) NOT NULL,
  `Year` int(4) NOT NULL,
  `HOD` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `E-mail_of_coordinator` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`BranchID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Branch` (`BranchID`, `Name`, `Cut_off`, `Year`, `HOD`, `E-mail_of_coordinator`) VALUES ('B1', 'CSAM', 7938, 2011, 'Desiree Jac', 'maximus63@iiitd.ac.in');
INSERT INTO `Branch` (`BranchID`, `Name`, `Cut_off`, `Year`, `HOD`, `E-mail_of_coordinator`) VALUES ('B2', 'CSD', 8745, 2012, 'Jaylin Feen', 'scottie08@iiitd.ac.in');
INSERT INTO `Branch` (`BranchID`, `Name`, `Cut_off`, `Year`, `HOD`, `E-mail_of_coordinator`) VALUES ('B3', 'CSE', 2782, 2012, 'Afton Olson', 'lavonne.rolfson@iiitd.ac.in');
INSERT INTO `Branch` (`BranchID`, `Name`, `Cut_off`, `Year`, `HOD`, `E-mail_of_coordinator`) VALUES ('B4', 'CSSS', 8816, 2017, 'Miss Evelyn', 'martine93@iiitd.ac.in');
INSERT INTO `Branch` (`BranchID`, `Name`, `Cut_off`, `Year`, `HOD`, `E-mail_of_coordinator`) VALUES ('B5', 'ECE', 4330, 2014, 'Jerrell Sch', 'ethelyn84@iiitd.ac.in');


#
# TABLE STRUCTURE FOR: Courses
#

DROP TABLE IF EXISTS `Courses`;

CREATE TABLE `Courses` (
  `CourseCode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `FacultyID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `PrereqCode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `No_of_students_enrolled` int(11) NOT NULL,
  `Credits` int(11) NOT NULL,
  `Semester` int(11) NOT NULL,
  PRIMARY KEY (`CourseCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Courses` (`CourseCode`, `FacultyID`, `Name`, `PrereqCode`, `No_of_students_enrolled`, `Credits`, `Semester`) VALUES ('CSE056', 'FAC330', 'non', 'CSE147', 206, 2, 3);
INSERT INTO `Courses` (`CourseCode`, `FacultyID`, `Name`, `PrereqCode`, `No_of_students_enrolled`, `Credits`, `Semester`) VALUES ('CSE064', 'FAC712', 'rerum', 'CSE172', 351, 1, 8);
INSERT INTO `Courses` (`CourseCode`, `FacultyID`, `Name`, `PrereqCode`, `No_of_students_enrolled`, `Credits`, `Semester`) VALUES ('CSE102', 'FAC390', 'sit', 'CSE159', 285, 1, 8);
INSERT INTO `Courses` (`CourseCode`, `FacultyID`, `Name`, `PrereqCode`, `No_of_students_enrolled`, `Credits`, `Semester`) VALUES ('CSE183', 'FAC180', 'aut', 'CSE132', 184, 3, 1);
INSERT INTO `Courses` (`CourseCode`, `FacultyID`, `Name`, `PrereqCode`, `No_of_students_enrolled`, `Credits`, `Semester`) VALUES ('CSE211', 'FAC330', 'consequatur', 'CSE114', 403, 4, 7);
INSERT INTO `Courses` (`CourseCode`, `FacultyID`, `Name`, `PrereqCode`, `No_of_students_enrolled`, `Credits`, `Semester`) VALUES ('CSE243', 'FAC427', 'ad', 'CSE193', 358, 3, 4);
INSERT INTO `Courses` (`CourseCode`, `FacultyID`, `Name`, `PrereqCode`, `No_of_students_enrolled`, `Credits`, `Semester`) VALUES ('CSE327', 'FAC712', 'vel', 'CSE142', 384, 2, 4);
INSERT INTO `Courses` (`CourseCode`, `FacultyID`, `Name`, `PrereqCode`, `No_of_students_enrolled`, `Credits`, `Semester`) VALUES ('CSE345', 'FAC180', 'ut', 'CSE175', 156, 1, 6);
INSERT INTO `Courses` (`CourseCode`, `FacultyID`, `Name`, `PrereqCode`, `No_of_students_enrolled`, `Credits`, `Semester`) VALUES ('CSE346', 'FAC649', 'dolorem', 'CSE132', 85, 4, 2);
INSERT INTO `Courses` (`CourseCode`, `FacultyID`, `Name`, `PrereqCode`, `No_of_students_enrolled`, `Credits`, `Semester`) VALUES ('CSE413', 'FAC427', 'deleniti', 'CSE181', 332, 1, 6);
INSERT INTO `Courses` (`CourseCode`, `FacultyID`, `Name`, `PrereqCode`, `No_of_students_enrolled`, `Credits`, `Semester`) VALUES ('CSE459', 'FAC959', 'qui', 'CSE116', 209, 2, 4);
INSERT INTO `Courses` (`CourseCode`, `FacultyID`, `Name`, `PrereqCode`, `No_of_students_enrolled`, `Credits`, `Semester`) VALUES ('CSE476', 'FAC850', 'quo', 'CSE131', 147, 3, 4);
INSERT INTO `Courses` (`CourseCode`, `FacultyID`, `Name`, `PrereqCode`, `No_of_students_enrolled`, `Credits`, `Semester`) VALUES ('CSE501', 'FAC959', 'illo', 'CSE105', 102, 3, 1);
INSERT INTO `Courses` (`CourseCode`, `FacultyID`, `Name`, `PrereqCode`, `No_of_students_enrolled`, `Credits`, `Semester`) VALUES ('CSE515', 'FAC390', 'aut', 'CSE191', 258, 3, 1);
INSERT INTO `Courses` (`CourseCode`, `FacultyID`, `Name`, `PrereqCode`, `No_of_students_enrolled`, `Credits`, `Semester`) VALUES ('CSE540', 'FAC180', 'qui', 'CSE112', 96, 4, 2);
INSERT INTO `Courses` (`CourseCode`, `FacultyID`, `Name`, `PrereqCode`, `No_of_students_enrolled`, `Credits`, `Semester`) VALUES ('CSE562', 'FAC330', 'et', 'CSE182', 380, 1, 6);
INSERT INTO `Courses` (`CourseCode`, `FacultyID`, `Name`, `PrereqCode`, `No_of_students_enrolled`, `Credits`, `Semester`) VALUES ('CSE577', 'FAC383', 'aut', 'CSE180', 216, 2, 7);
INSERT INTO `Courses` (`CourseCode`, `FacultyID`, `Name`, `PrereqCode`, `No_of_students_enrolled`, `Credits`, `Semester`) VALUES ('CSE588', 'FAC390', 'dignissimos', 'CSE141', 317, 4, 1);
INSERT INTO `Courses` (`CourseCode`, `FacultyID`, `Name`, `PrereqCode`, `No_of_students_enrolled`, `Credits`, `Semester`) VALUES ('CSE665', 'FAC649', 'odit', 'CSE166', 338, 4, 4);
INSERT INTO `Courses` (`CourseCode`, `FacultyID`, `Name`, `PrereqCode`, `No_of_students_enrolled`, `Credits`, `Semester`) VALUES ('CSE706', 'FAC649', 'distinctio', 'CSE165', 412, 3, 8);
INSERT INTO `Courses` (`CourseCode`, `FacultyID`, `Name`, `PrereqCode`, `No_of_students_enrolled`, `Credits`, `Semester`) VALUES ('CSE736', 'FAC850', 'facilis', 'CSE125', 299, 1, 2);
INSERT INTO `Courses` (`CourseCode`, `FacultyID`, `Name`, `PrereqCode`, `No_of_students_enrolled`, `Credits`, `Semester`) VALUES ('CSE752', 'FAC850', 'dolorem', 'CSE135', 169, 3, 1);
INSERT INTO `Courses` (`CourseCode`, `FacultyID`, `Name`, `PrereqCode`, `No_of_students_enrolled`, `Credits`, `Semester`) VALUES ('CSE832', 'FAC738', 'exercitationem', 'CSE104', 153, 3, 4);
INSERT INTO `Courses` (`CourseCode`, `FacultyID`, `Name`, `PrereqCode`, `No_of_students_enrolled`, `Credits`, `Semester`) VALUES ('CSE889', 'FAC738', 'optio', 'CSE164', 235, 1, 1);
INSERT INTO `Courses` (`CourseCode`, `FacultyID`, `Name`, `PrereqCode`, `No_of_students_enrolled`, `Credits`, `Semester`) VALUES ('CSE895', 'FAC427', 'ea', 'CSE108', 381, 2, 3);
INSERT INTO `Courses` (`CourseCode`, `FacultyID`, `Name`, `PrereqCode`, `No_of_students_enrolled`, `Credits`, `Semester`) VALUES ('CSE929', 'FAC383', 'rerum', 'CSE112', 116, 2, 7);
INSERT INTO `Courses` (`CourseCode`, `FacultyID`, `Name`, `PrereqCode`, `No_of_students_enrolled`, `Credits`, `Semester`) VALUES ('CSE952', 'FAC959', 'laborum', 'CSE104', 403, 1, 1);
INSERT INTO `Courses` (`CourseCode`, `FacultyID`, `Name`, `PrereqCode`, `No_of_students_enrolled`, `Credits`, `Semester`) VALUES ('CSE978', 'FAC738', 'debitis', 'CSE160', 372, 3, 8);
INSERT INTO `Courses` (`CourseCode`, `FacultyID`, `Name`, `PrereqCode`, `No_of_students_enrolled`, `Credits`, `Semester`) VALUES ('CSE989', 'FAC383', 'quo', 'CSE149', 410, 2, 5);
INSERT INTO `Courses` (`CourseCode`, `FacultyID`, `Name`, `PrereqCode`, `No_of_students_enrolled`, `Credits`, `Semester`) VALUES ('CSE999', 'FAC712', 'rerum', 'CSE124', 386, 2, 8);


#
# TABLE STRUCTURE FOR: FMS
#

DROP TABLE IF EXISTS `FMS`;

CREATE TABLE `FMS` (
  `EmployeeID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Hostel` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `RequestID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `FMS` (`EmployeeID`, `Name`, `Hostel`, `RequestID`) VALUES ('EMP042', 'Oscar', 'H896', 'REQ962');
INSERT INTO `FMS` (`EmployeeID`, `Name`, `Hostel`, `RequestID`) VALUES ('EMP161', 'Einar', 'H859', 'REQ303');
INSERT INTO `FMS` (`EmployeeID`, `Name`, `Hostel`, `RequestID`) VALUES ('EMP184', 'Filiberto', 'H945', 'REQ093');
INSERT INTO `FMS` (`EmployeeID`, `Name`, `Hostel`, `RequestID`) VALUES ('EMP207', 'Freddie', 'H868', 'REQ581');
INSERT INTO `FMS` (`EmployeeID`, `Name`, `Hostel`, `RequestID`) VALUES ('EMP245', 'Boyd', 'H847', 'REQ270');
INSERT INTO `FMS` (`EmployeeID`, `Name`, `Hostel`, `RequestID`) VALUES ('EMP288', 'Mckenna', 'H161', 'REQ572');
INSERT INTO `FMS` (`EmployeeID`, `Name`, `Hostel`, `RequestID`) VALUES ('EMP293', 'Rhett', 'H811', 'REQ782');
INSERT INTO `FMS` (`EmployeeID`, `Name`, `Hostel`, `RequestID`) VALUES ('EMP324', 'Emmanuel', 'H366', 'REQ293');
INSERT INTO `FMS` (`EmployeeID`, `Name`, `Hostel`, `RequestID`) VALUES ('EMP329', 'George', 'H605', 'REQ141');
INSERT INTO `FMS` (`EmployeeID`, `Name`, `Hostel`, `RequestID`) VALUES ('EMP341', 'Cooper', 'H152', 'REQ126');
INSERT INTO `FMS` (`EmployeeID`, `Name`, `Hostel`, `RequestID`) VALUES ('EMP412', 'Morris', 'H417', 'REQ528');
INSERT INTO `FMS` (`EmployeeID`, `Name`, `Hostel`, `RequestID`) VALUES ('EMP439', 'Carlo', 'H830', 'REQ705');
INSERT INTO `FMS` (`EmployeeID`, `Name`, `Hostel`, `RequestID`) VALUES ('EMP478', 'Monserrat', 'H704', 'REQ962');
INSERT INTO `FMS` (`EmployeeID`, `Name`, `Hostel`, `RequestID`) VALUES ('EMP528', 'Neil', 'H980', 'REQ557');
INSERT INTO `FMS` (`EmployeeID`, `Name`, `Hostel`, `RequestID`) VALUES ('EMP555', 'Hassan', 'H637', 'REQ767');
INSERT INTO `FMS` (`EmployeeID`, `Name`, `Hostel`, `RequestID`) VALUES ('EMP642', 'Gilberto', 'H863', 'REQ799');
INSERT INTO `FMS` (`EmployeeID`, `Name`, `Hostel`, `RequestID`) VALUES ('EMP655', 'Jerrell', 'H598', 'REQ787');
INSERT INTO `FMS` (`EmployeeID`, `Name`, `Hostel`, `RequestID`) VALUES ('EMP697', 'Reed', 'H539', 'REQ332');
INSERT INTO `FMS` (`EmployeeID`, `Name`, `Hostel`, `RequestID`) VALUES ('EMP743', 'Gerardo', 'H197', 'REQ608');
INSERT INTO `FMS` (`EmployeeID`, `Name`, `Hostel`, `RequestID`) VALUES ('EMP764', 'Shawn', 'H302', 'REQ744');
INSERT INTO `FMS` (`EmployeeID`, `Name`, `Hostel`, `RequestID`) VALUES ('EMP801', 'Benjamin', 'H564', 'REQ495');
INSERT INTO `FMS` (`EmployeeID`, `Name`, `Hostel`, `RequestID`) VALUES ('EMP877', 'Adrian', 'H778', 'REQ119');
INSERT INTO `FMS` (`EmployeeID`, `Name`, `Hostel`, `RequestID`) VALUES ('EMP899', 'Cody', 'H125', 'REQ940');
INSERT INTO `FMS` (`EmployeeID`, `Name`, `Hostel`, `RequestID`) VALUES ('EMP957', 'Benjamin', 'H967', 'REQ948');
INSERT INTO `FMS` (`EmployeeID`, `Name`, `Hostel`, `RequestID`) VALUES ('EMP985', 'Dennis', 'H059', 'REQ237');


#
# TABLE STRUCTURE FOR: Faculty
#

DROP TABLE IF EXISTS `Faculty`;

CREATE TABLE `Faculty` (
  `FacultyID` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `BranchID` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `current_course` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `Post` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `RoomID` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `Salary` int(8) NOT NULL,
  `Contact_no` int(10) NOT NULL,
  PRIMARY KEY (`FacultyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Faculty` (`FacultyID`, `BranchID`, `Name`, `current_course`, `Post`, `RoomID`, `Salary`, `Contact_no`) VALUES ('FAC180', 'B2', 'Dr. Magnus Bradtke Jr.', 'Quae ut ', ' Senior Prof', 'R045', 215619, 368);
INSERT INTO `Faculty` (`FacultyID`, `BranchID`, `Name`, `current_course`, `Post`, `RoomID`, `Salary`, `Contact_no`) VALUES ('FAC330', 'B1', 'Birdie Bernhard', 'Soluta e', ' Senior Prof', 'R026', 165260, 0);
INSERT INTO `Faculty` (`FacultyID`, `BranchID`, `Name`, `current_course`, `Post`, `RoomID`, `Salary`, `Contact_no`) VALUES ('FAC383', 'B3', 'Maximus Kiehn PhD', 'Earum do', 'Associate Prof', 'R135', 311905, 17);
INSERT INTO `Faculty` (`FacultyID`, `BranchID`, `Name`, `current_course`, `Post`, `RoomID`, `Salary`, `Contact_no`) VALUES ('FAC390', 'B4', 'Mr. Jonatan Rempel', 'Doloribu', 'Associate Prof', 'R065', 435782, 848);
INSERT INTO `Faculty` (`FacultyID`, `BranchID`, `Name`, `current_course`, `Post`, `RoomID`, `Salary`, `Contact_no`) VALUES ('FAC427', 'B1', 'Dr. Chad Hermiston III', 'Minus qu', ' Senior Prof', 'R094', 434786, 793);
INSERT INTO `Faculty` (`FacultyID`, `BranchID`, `Name`, `current_course`, `Post`, `RoomID`, `Salary`, `Contact_no`) VALUES ('FAC649', 'B2', 'Jett Williamson', 'Ducimus ', ' Prof', 'R129', 482920, 54);
INSERT INTO `Faculty` (`FacultyID`, `BranchID`, `Name`, `current_course`, `Post`, `RoomID`, `Salary`, `Contact_no`) VALUES ('FAC712', 'B3', 'Tad Gutkowski', 'Eius dol', 'Associate Prof', 'R059', 480769, 916);
INSERT INTO `Faculty` (`FacultyID`, `BranchID`, `Name`, `current_course`, `Post`, `RoomID`, `Salary`, `Contact_no`) VALUES ('FAC738', 'B5', 'Mrs. Cecelia Shanahan I', 'Sit odio', ' Senior Prof', 'R075', 443622, 23);
INSERT INTO `Faculty` (`FacultyID`, `BranchID`, `Name`, `current_course`, `Post`, `RoomID`, `Salary`, `Contact_no`) VALUES ('FAC850', 'B4', 'Felton Bruen', 'Repellen', ' Prof', 'R139', 139445, 0);
INSERT INTO `Faculty` (`FacultyID`, `BranchID`, `Name`, `current_course`, `Post`, `RoomID`, `Salary`, `Contact_no`) VALUES ('FAC959', 'B5', 'Gardner Predovic', 'Et eius ', ' Prof', 'R168', 345137, 708865);


#
# TABLE STRUCTURE FOR: Hostel
#

DROP TABLE IF EXISTS `Hostel`;

CREATE TABLE `Hostel` (
  `HostelID` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `Complaints` int(20) NOT NULL,
  `Last_maintainance_date` date NOT NULL,
  PRIMARY KEY (`HostelID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Hostel` (`HostelID`, `Complaints`, `Last_maintainance_date`) VALUES ('H059', 9, '2017-05-16');
INSERT INTO `Hostel` (`HostelID`, `Complaints`, `Last_maintainance_date`) VALUES ('H125', 2, '2017-09-11');
INSERT INTO `Hostel` (`HostelID`, `Complaints`, `Last_maintainance_date`) VALUES ('H152', 1, '2017-06-12');
INSERT INTO `Hostel` (`HostelID`, `Complaints`, `Last_maintainance_date`) VALUES ('H161', 4, '2015-06-13');
INSERT INTO `Hostel` (`HostelID`, `Complaints`, `Last_maintainance_date`) VALUES ('H197', 3, '2012-07-19');
INSERT INTO `Hostel` (`HostelID`, `Complaints`, `Last_maintainance_date`) VALUES ('H302', 3, '2012-08-25');
INSERT INTO `Hostel` (`HostelID`, `Complaints`, `Last_maintainance_date`) VALUES ('H366', 3, '2015-06-01');
INSERT INTO `Hostel` (`HostelID`, `Complaints`, `Last_maintainance_date`) VALUES ('H417', 9, '2018-04-09');
INSERT INTO `Hostel` (`HostelID`, `Complaints`, `Last_maintainance_date`) VALUES ('H539', 6, '2018-02-02');
INSERT INTO `Hostel` (`HostelID`, `Complaints`, `Last_maintainance_date`) VALUES ('H564', 9, '2016-04-04');
INSERT INTO `Hostel` (`HostelID`, `Complaints`, `Last_maintainance_date`) VALUES ('H598', 3, '2015-08-30');
INSERT INTO `Hostel` (`HostelID`, `Complaints`, `Last_maintainance_date`) VALUES ('H605', 2, '2012-08-04');
INSERT INTO `Hostel` (`HostelID`, `Complaints`, `Last_maintainance_date`) VALUES ('H637', 3, '2014-03-20');
INSERT INTO `Hostel` (`HostelID`, `Complaints`, `Last_maintainance_date`) VALUES ('H704', 2, '2015-04-12');
INSERT INTO `Hostel` (`HostelID`, `Complaints`, `Last_maintainance_date`) VALUES ('H778', 3, '2018-08-06');
INSERT INTO `Hostel` (`HostelID`, `Complaints`, `Last_maintainance_date`) VALUES ('H811', 8, '2019-07-28');
INSERT INTO `Hostel` (`HostelID`, `Complaints`, `Last_maintainance_date`) VALUES ('H830', 6, '2019-08-09');
INSERT INTO `Hostel` (`HostelID`, `Complaints`, `Last_maintainance_date`) VALUES ('H847', 6, '2014-07-28');
INSERT INTO `Hostel` (`HostelID`, `Complaints`, `Last_maintainance_date`) VALUES ('H859', 9, '2015-04-19');
INSERT INTO `Hostel` (`HostelID`, `Complaints`, `Last_maintainance_date`) VALUES ('H863', 1, '2015-01-10');
INSERT INTO `Hostel` (`HostelID`, `Complaints`, `Last_maintainance_date`) VALUES ('H868', 2, '2012-11-12');
INSERT INTO `Hostel` (`HostelID`, `Complaints`, `Last_maintainance_date`) VALUES ('H896', 4, '2012-06-17');
INSERT INTO `Hostel` (`HostelID`, `Complaints`, `Last_maintainance_date`) VALUES ('H945', 8, '2010-11-21');
INSERT INTO `Hostel` (`HostelID`, `Complaints`, `Last_maintainance_date`) VALUES ('H967', 6, '2012-04-09');
INSERT INTO `Hostel` (`HostelID`, `Complaints`, `Last_maintainance_date`) VALUES ('H980', 9, '2018-10-27');


#
# TABLE STRUCTURE FOR: LivesIn
#

DROP TABLE IF EXISTS `LivesIn`;

CREATE TABLE `LivesIn` (
  `RollNo` int(8) NOT NULL,
  `RoomID` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`RollNo`,`RoomID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2010265, 'R026');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2010270, 'R045');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2010287, 'R059');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2010410, 'R065');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2010476, 'R075');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2010672, 'R094');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2010686, 'R129');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2010716, 'R135');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2010737, 'R139');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2010769, 'R168');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2010892, 'R194');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2011122, 'R201');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2011152, 'R212');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2011173, 'R251');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2011182, 'R269');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2011486, 'R323');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2011517, 'R350');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2011634, 'R364');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2011804, 'R374');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2011917, 'R401');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2011991, 'R408');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2012200, 'R419');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2012225, 'R466');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2012281, 'R498');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2012330, 'R509');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2012334, 'R522');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2012392, 'R528');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2012507, 'R544');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2012586, 'R676');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2012615, 'R710');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2012616, 'R715');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2012664, 'R737');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2012745, 'R751');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2012808, 'R772');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2012828, 'R773');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2012931, 'R777');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2013033, 'R780');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2013056, 'R796');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2013087, 'R816');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2013103, 'R838');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2013125, 'R846');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2013278, 'R911');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2013324, 'R914');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2013594, 'R920');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2013660, 'R921');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2013885, 'R927');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2013887, 'R946');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2014043, 'R968');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2014402, 'R985');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2014470, 'R994');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2014583, 'R026');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2014887, 'R045');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2014901, 'R059');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2015040, 'R065');
INSERT INTO `LivesIn` (`RollNo`, `RoomID`) VALUES (2015087, 'R075');


#
# TABLE STRUCTURE FOR: Mess
#

DROP TABLE IF EXISTS `Mess`;

CREATE TABLE `Mess` (
  `MessID` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `Menu` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Complaints` int(100) NOT NULL,
  `Workers` int(20) NOT NULL,
  PRIMARY KEY (`MessID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Mess` (`MessID`, `Menu`, `Complaints`, `Workers`) VALUES ('M1', 'eum', 8, 90);
INSERT INTO `Mess` (`MessID`, `Menu`, `Complaints`, `Workers`) VALUES ('M3', 'facilis', 4, 17);
INSERT INTO `Mess` (`MessID`, `Menu`, `Complaints`, `Workers`) VALUES ('M7', 'repudiandae', 8, 46);


#
# TABLE STRUCTURE FOR: Requests_Complaints
#

DROP TABLE IF EXISTS `Requests_Complaints`;

CREATE TABLE `Requests_Complaints` (
  `RequestID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Request` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `RollNo` int(11) NOT NULL,
  `CurrStatus` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`RequestID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Requests_Complaints` (`RequestID`, `type`, `Request`, `RollNo`, `CurrStatus`) VALUES ('REQ093', 'Request', 'Accusamus est odit blanditiis.', 2010265, 'InProgress');
INSERT INTO `Requests_Complaints` (`RequestID`, `type`, `Request`, `RollNo`, `CurrStatus`) VALUES ('REQ119', 'Request', 'Et architecto et autem distinctio ratione.', 2010270, 'InProgress');
INSERT INTO `Requests_Complaints` (`RequestID`, `type`, `Request`, `RollNo`, `CurrStatus`) VALUES ('REQ126', 'Request', 'Non aut qui ratione alias nobis.', 2010287, 'Completed');
INSERT INTO `Requests_Complaints` (`RequestID`, `type`, `Request`, `RollNo`, `CurrStatus`) VALUES ('REQ141', 'Complaint', 'Consequatur qui voluptates aut accusamus et laboru', 2010410, 'InProgress');
INSERT INTO `Requests_Complaints` (`RequestID`, `type`, `Request`, `RollNo`, `CurrStatus`) VALUES ('REQ237', 'Complaint', 'Aut sit qui et tempora.', 2010476, 'Completed');
INSERT INTO `Requests_Complaints` (`RequestID`, `type`, `Request`, `RollNo`, `CurrStatus`) VALUES ('REQ270', 'Request', 'Aspernatur provident iusto labore repellendus perf', 2010672, 'Completed');
INSERT INTO `Requests_Complaints` (`RequestID`, `type`, `Request`, `RollNo`, `CurrStatus`) VALUES ('REQ293', 'Complaint', 'Beatae et dolorum amet autem nihil error.', 2010686, 'InProgress');
INSERT INTO `Requests_Complaints` (`RequestID`, `type`, `Request`, `RollNo`, `CurrStatus`) VALUES ('REQ303', 'Complaint', 'Consequatur et odio ab consequuntur debitis.', 2010716, 'Completed');
INSERT INTO `Requests_Complaints` (`RequestID`, `type`, `Request`, `RollNo`, `CurrStatus`) VALUES ('REQ332', 'Complaint', 'Dolore eius eum recusandae ab ut magnam voluptatum', 2010737, 'Completed');
INSERT INTO `Requests_Complaints` (`RequestID`, `type`, `Request`, `RollNo`, `CurrStatus`) VALUES ('REQ495', 'Complaint', 'Est perferendis eos dignissimos ut et fugit eius.', 2010769, 'InProgress');
INSERT INTO `Requests_Complaints` (`RequestID`, `type`, `Request`, `RollNo`, `CurrStatus`) VALUES ('REQ528', 'Request', 'Maiores cumque in consequatur quos corporis minus.', 2010892, 'Completed');
INSERT INTO `Requests_Complaints` (`RequestID`, `type`, `Request`, `RollNo`, `CurrStatus`) VALUES ('REQ557', 'Complaint', 'Dolores exercitationem eum ut quis rerum laboriosa', 2011122, 'Completed');
INSERT INTO `Requests_Complaints` (`RequestID`, `type`, `Request`, `RollNo`, `CurrStatus`) VALUES ('REQ572', 'Request', 'Velit non veritatis veniam enim rerum ipsum.', 2011152, 'InProgress');
INSERT INTO `Requests_Complaints` (`RequestID`, `type`, `Request`, `RollNo`, `CurrStatus`) VALUES ('REQ581', 'Complaint', 'Ab omnis inventore placeat voluptatem doloremque n', 2011173, 'Completed');
INSERT INTO `Requests_Complaints` (`RequestID`, `type`, `Request`, `RollNo`, `CurrStatus`) VALUES ('REQ608', 'Complaint', 'Quaerat consequatur cumque ut et.', 2011182, 'InProgress');
INSERT INTO `Requests_Complaints` (`RequestID`, `type`, `Request`, `RollNo`, `CurrStatus`) VALUES ('REQ705', 'Request', 'Iure omnis ullam repellendus libero eum voluptatem', 2011486, 'InProgress');
INSERT INTO `Requests_Complaints` (`RequestID`, `type`, `Request`, `RollNo`, `CurrStatus`) VALUES ('REQ744', 'Request', 'Non ipsam illo perspiciatis qui ullam beatae conse', 2011517, 'InProgress');
INSERT INTO `Requests_Complaints` (`RequestID`, `type`, `Request`, `RollNo`, `CurrStatus`) VALUES ('REQ767', 'Request', 'Libero excepturi qui aliquid.', 2011634, 'InProgress');
INSERT INTO `Requests_Complaints` (`RequestID`, `type`, `Request`, `RollNo`, `CurrStatus`) VALUES ('REQ782', 'Request', 'Maiores temporibus dolor hic adipisci.', 2011804, 'InProgress');
INSERT INTO `Requests_Complaints` (`RequestID`, `type`, `Request`, `RollNo`, `CurrStatus`) VALUES ('REQ787', 'Complaint', 'Voluptates et numquam sit illum magnam.', 2011917, 'InProgress');


#
# TABLE STRUCTURE FOR: Room
#

DROP TABLE IF EXISTS `Room`;

CREATE TABLE `Room` (
  `RoomID` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `Capacity` int(11) NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`RoomID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Room` (`RoomID`, `Capacity`, `type`) VALUES ('R026', 66, 'Prof');
INSERT INTO `Room` (`RoomID`, `Capacity`, `type`) VALUES ('R045', 24, 'Hostel');
INSERT INTO `Room` (`RoomID`, `Capacity`, `type`) VALUES ('R059', 48, 'Prof');
INSERT INTO `Room` (`RoomID`, `Capacity`, `type`) VALUES ('R065', 74, 'Class');
INSERT INTO `Room` (`RoomID`, `Capacity`, `type`) VALUES ('R075', 68, 'Hostel');
INSERT INTO `Room` (`RoomID`, `Capacity`, `type`) VALUES ('R094', 79, 'Class');
INSERT INTO `Room` (`RoomID`, `Capacity`, `type`) VALUES ('R129', 85, 'Prof');
INSERT INTO `Room` (`RoomID`, `Capacity`, `type`) VALUES ('R135', 76, 'Hostel');
INSERT INTO `Room` (`RoomID`, `Capacity`, `type`) VALUES ('R139', 32, 'Hostel');
INSERT INTO `Room` (`RoomID`, `Capacity`, `type`) VALUES ('R168', 90, 'Hostel');
INSERT INTO `Room` (`RoomID`, `Capacity`, `type`) VALUES ('R194', 70, 'Class');
INSERT INTO `Room` (`RoomID`, `Capacity`, `type`) VALUES ('R201', 41, 'Prof');
INSERT INTO `Room` (`RoomID`, `Capacity`, `type`) VALUES ('R212', 39, 'Hostel');
INSERT INTO `Room` (`RoomID`, `Capacity`, `type`) VALUES ('R251', 10, 'Hostel');
INSERT INTO `Room` (`RoomID`, `Capacity`, `type`) VALUES ('R269', 67, 'Hostel');
INSERT INTO `Room` (`RoomID`, `Capacity`, `type`) VALUES ('R323', 71, 'Prof');
INSERT INTO `Room` (`RoomID`, `Capacity`, `type`) VALUES ('R350', 91, 'Prof');
INSERT INTO `Room` (`RoomID`, `Capacity`, `type`) VALUES ('R364', 39, 'Hostel');
INSERT INTO `Room` (`RoomID`, `Capacity`, `type`) VALUES ('R374', 20, 'Hostel');
INSERT INTO `Room` (`RoomID`, `Capacity`, `type`) VALUES ('R401', 6, 'Class');
INSERT INTO `Room` (`RoomID`, `Capacity`, `type`) VALUES ('R408', 58, 'Hostel');
INSERT INTO `Room` (`RoomID`, `Capacity`, `type`) VALUES ('R419', 0, 'Class');
INSERT INTO `Room` (`RoomID`, `Capacity`, `type`) VALUES ('R466', 19, 'Prof');
INSERT INTO `Room` (`RoomID`, `Capacity`, `type`) VALUES ('R498', 76, 'Hostel');
INSERT INTO `Room` (`RoomID`, `Capacity`, `type`) VALUES ('R509', 69, 'Class');
INSERT INTO `Room` (`RoomID`, `Capacity`, `type`) VALUES ('R522', 73, 'Hostel');
INSERT INTO `Room` (`RoomID`, `Capacity`, `type`) VALUES ('R528', 15, 'Hostel');
INSERT INTO `Room` (`RoomID`, `Capacity`, `type`) VALUES ('R544', 10, 'Hostel');
INSERT INTO `Room` (`RoomID`, `Capacity`, `type`) VALUES ('R676', 67, 'Prof');
INSERT INTO `Room` (`RoomID`, `Capacity`, `type`) VALUES ('R710', 64, 'Hostel');
INSERT INTO `Room` (`RoomID`, `Capacity`, `type`) VALUES ('R715', 62, 'Class');
INSERT INTO `Room` (`RoomID`, `Capacity`, `type`) VALUES ('R737', 95, 'Hostel');
INSERT INTO `Room` (`RoomID`, `Capacity`, `type`) VALUES ('R751', 62, 'Class');
INSERT INTO `Room` (`RoomID`, `Capacity`, `type`) VALUES ('R772', 71, 'Prof');
INSERT INTO `Room` (`RoomID`, `Capacity`, `type`) VALUES ('R773', 26, 'Hostel');
INSERT INTO `Room` (`RoomID`, `Capacity`, `type`) VALUES ('R777', 97, 'Prof');
INSERT INTO `Room` (`RoomID`, `Capacity`, `type`) VALUES ('R780', 97, 'Prof');
INSERT INTO `Room` (`RoomID`, `Capacity`, `type`) VALUES ('R796', 3, 'Hostel');
INSERT INTO `Room` (`RoomID`, `Capacity`, `type`) VALUES ('R816', 68, 'Class');
INSERT INTO `Room` (`RoomID`, `Capacity`, `type`) VALUES ('R838', 44, 'Hostel');
INSERT INTO `Room` (`RoomID`, `Capacity`, `type`) VALUES ('R846', 26, 'Class');
INSERT INTO `Room` (`RoomID`, `Capacity`, `type`) VALUES ('R911', 34, 'Prof');
INSERT INTO `Room` (`RoomID`, `Capacity`, `type`) VALUES ('R914', 11, 'Hostel');
INSERT INTO `Room` (`RoomID`, `Capacity`, `type`) VALUES ('R920', 39, 'Prof');
INSERT INTO `Room` (`RoomID`, `Capacity`, `type`) VALUES ('R921', 61, 'Prof');
INSERT INTO `Room` (`RoomID`, `Capacity`, `type`) VALUES ('R927', 13, 'Class');
INSERT INTO `Room` (`RoomID`, `Capacity`, `type`) VALUES ('R946', 53, 'Prof');
INSERT INTO `Room` (`RoomID`, `Capacity`, `type`) VALUES ('R968', 60, 'Class');
INSERT INTO `Room` (`RoomID`, `Capacity`, `type`) VALUES ('R985', 29, 'Prof');
INSERT INTO `Room` (`RoomID`, `Capacity`, `type`) VALUES ('R994', 93, 'Hostel');


#
# TABLE STRUCTURE FOR: Students
#

DROP TABLE IF EXISTS `Students`;

CREATE TABLE `Students` (
  `RollNo` int(11) NOT NULL,
  `First_Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Last_Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DOB` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone_no` int(11) NOT NULL,
  `Hostel_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MessID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `BranchID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Credits` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Grade` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CurrentSemester` int(11) NOT NULL,
  PRIMARY KEY (`RollNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2010265, 'Kariane', 'Boyer', '2000-07-29 04:32:15', 1, 'H847', 'M7', 'B3', 121, 'stanton.scottie@iiitd.ac.in', '9.4', 6);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2010270, 'Gage', 'Sawayn', '1998-02-11 08:07:24', 903, 'H704', 'M3', 'B4', 34, 'brad43@iiitd.ac.in', '6.14', 7);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2010287, 'Frederik', 'Mayer', '2000-11-16 22:09:43', 909, 'H967', 'M7', 'B4', 29, 'jhessel@iiitd.ac.in', '5.44', 6);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2010410, 'Rosina', 'Hermiston', '1995-11-23 20:50:41', 0, 'H811', 'M1', 'B1', 55, 'erwin20@iiitd.ac.in', '9.48', 1);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2010476, 'Emmitt', 'Satterfield', '1999-08-12 09:37:00', 809171, 'H896', 'M1', 'B2', 73, 'russel.darrin@iiitd.ac.in', '8.28', 4);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2010672, 'Jason', 'Durgan', '2000-08-27 02:36:34', 671, 'H863', 'M1', 'B5', 77, 'tania.reichert@iiitd.ac.in', '9.43', 1);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2010686, 'Deonte', 'Schowalter', '2001-04-13 14:04:45', 847812, 'H945', 'M3', 'B3', 101, 'julianne.waelchi@iiitd.ac.in', '5.39', 6);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2010716, 'Kian', 'Funk', '2000-08-23 00:46:23', 0, 'H417', 'M1', 'B3', 93, 'blair.pouros@iiitd.ac.in', '7.73', 7);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2010737, 'Bernadette', 'Leuschke', '1996-06-04 12:11:29', 334495, 'H778', 'M1', 'B5', 71, 'purdy.joanny@iiitd.ac.in', '5.97', 3);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2010769, 'Taylor', 'Fritsch', '2000-11-10 14:23:25', 274933, 'H197', 'M3', 'B5', 45, 'hosinski@iiitd.ac.in', '7.59', 8);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2010892, 'Jeanette', 'Sporer', '2002-02-21 20:34:59', 1, 'H863', 'M7', 'B5', 109, 'zo\'connell@iiitd.ac.in', '6.9', 7);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2011122, 'Cindy', 'Kohler', '1996-03-24 20:03:29', 33535, 'H564', 'M1', 'B5', 139, 'nathaniel53@iiitd.ac.in', '6.4', 6);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2011152, 'Abel', 'Douglas', '2000-07-22 15:58:48', 29, 'H161', 'M3', 'B4', 74, 'ebba.lemke@iiitd.ac.in', '9.31', 6);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2011173, 'Norene', 'Schuppe', '2000-11-27 00:27:49', 813, 'H366', 'M1', 'B2', 70, 'wstamm@iiitd.ac.in', '5.19', 1);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2011182, 'Coy', 'Johns', '1999-08-10 19:54:15', 192331, 'H564', 'M1', 'B5', 60, 'vonrueden.lilyan@iiitd.ac.in', '6.25', 8);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2011486, 'Morton', 'Goldner', '1996-12-02 18:43:41', 881979, 'H059', 'M3', 'B1', 71, 'kirsten.monahan@iiitd.ac.in', '6.47', 3);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2011517, 'Edison', 'Gutkowski', '1996-01-22 21:23:51', 1, 'H637', 'M1', 'B3', 55, 'sydnie.sauer@iiitd.ac.in', '6.46', 3);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2011634, 'Juston', 'Larson', '1998-02-17 16:16:38', 1, 'H896', 'M1', 'B2', 55, 'jarrell.torp@iiitd.ac.in', '9.73', 4);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2011804, 'Ludie', 'Cassin', '1998-03-17 14:46:16', 87, 'H161', 'M1', 'B4', 20, 'jolson@iiitd.ac.in', '7.94', 6);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2011917, 'Astrid', 'Hagenes', '2000-11-16 15:30:13', 1, 'H302', 'M7', 'B1', 46, 'jocelyn39@iiitd.ac.in', '9.26', 4);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2011991, 'Eriberto', 'Lindgren', '1997-09-26 03:37:59', 1, 'H847', 'M7', 'B3', 132, 'jamir42@iiitd.ac.in', '5.33', 4);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2012200, 'Marquis', 'Parisian', '1999-01-07 08:45:41', 643, 'H704', 'M7', 'B4', 117, 'gsimonis@iiitd.ac.in', '6.74', 2);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2012225, 'Bailee', 'Terry', '1998-05-20 08:44:07', 4904, 'H366', 'M1', 'B2', 109, 'rzulauf@iiitd.ac.in', '9.59', 8);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2012281, 'Joe', 'Feeney', '1998-01-31 15:30:08', 0, 'H778', 'M7', 'B5', 115, 'preilly@iiitd.ac.in', '6.51', 6);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2012330, 'Marley', 'Crist', '1999-11-10 08:35:54', 938, 'H605', 'M1', 'B2', 46, 'walsh.joyce@iiitd.ac.in', '8.75', 2);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2012334, 'Jordon', 'Herman', '2000-02-12 10:49:55', 191181, 'H059', 'M1', 'B1', 41, 'rmcdermott@iiitd.ac.in', '6.83', 7);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2012392, 'Colton', 'Jakubowski', '1995-08-25 12:05:20', 2147483647, 'H859', 'M1', 'B4', 100, 'morissette.marcelo@iiitd.ac.in', '7.37', 6);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2012507, 'Elva', 'Fay', '1997-02-23 08:28:26', 2147483647, 'H152', 'M7', 'B3', 137, 'purdy.matt@iiitd.ac.in', '8.93', 4);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2012586, 'Maryjane', 'Kub', '1998-04-13 17:32:50', 59, 'H605', 'M7', 'B2', 26, 'cristobal.schneider@iiitd.ac.in', '8.91', 8);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2012615, 'Dee', 'Ullrich', '2001-01-02 15:55:17', 502425, 'H945', 'M3', 'B3', 63, 'jaskolski.emery@iiitd.ac.in', '7.7', 5);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2012616, 'Arnoldo', 'Toy', '2001-03-18 17:36:24', 0, 'H847', 'M3', 'B3', 52, 'emiliano.reilly@iiitd.ac.in', '7.51', 6);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2012664, 'Oswald', 'Reichert', '1996-01-20 09:31:58', 1, 'H868', 'M1', 'B1', 108, 'hleffler@iiitd.ac.in', '8.08', 7);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2012745, 'Leora', 'Muller', '1999-01-24 21:51:22', 0, 'H847', 'M1', 'B3', 69, 'marquardt.nicolette@iiitd.ac.in', '8.39', 2);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2012808, 'Elisha', 'O\'Hara', '1997-01-17 19:04:56', 0, 'H539', 'M3', 'B4', 34, 'paucek.berry@iiitd.ac.in', '9.74', 1);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2012828, 'Alexane', 'Yost', '1997-06-20 07:31:00', 0, 'H859', 'M1', 'B4', 60, 'eleazar37@iiitd.ac.in', '5.89', 3);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2012931, 'Lora', 'Langosh', '2001-06-05 12:27:08', 418250, 'H197', 'M7', 'B5', 78, 'lwalker@iiitd.ac.in', '8.56', 2);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2013033, 'Aliza', 'Mohr', '2000-07-29 11:51:53', 932, 'H564', 'M3', 'B5', 142, 'xgusikowski@iiitd.ac.in', '9.64', 5);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2013056, 'Jordan', 'Klein', '2000-08-03 21:33:47', 48, 'H539', 'M7', 'B4', 68, 'mckayla.purdy@iiitd.ac.in', '8.74', 3);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2013087, 'Stuart', 'Anderson', '1997-07-18 01:49:01', 283975, 'H417', 'M7', 'B3', 93, 'satterfield.simeon@iiitd.ac.in', '8.11', 7);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2013103, 'Austyn', 'Schiller', '2001-10-25 08:38:38', 0, 'H598', 'M7', 'B1', 123, 'klein.halle@iiitd.ac.in', '8.92', 4);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2013125, 'Josianne', 'Bashirian', '2001-07-05 01:52:38', 1, 'H980', 'M3', 'B5', 127, 'darrin18@iiitd.ac.in', '5.18', 4);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2013278, 'Jacinto', 'Brekke', '2001-04-28 12:40:28', 955, 'H811', 'M1', 'B1', 124, 'wilbert.boehm@iiitd.ac.in', '5.65', 5);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2013324, 'Blanca', 'Ferry', '2001-02-23 19:25:45', 0, 'H704', 'M1', 'B4', 68, 'lkovacek@iiitd.ac.in', '9.42', 7);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2013594, 'Thalia', 'Wiza', '1995-10-11 00:44:52', 0, 'H302', 'M1', 'B1', 67, 'lamar04@iiitd.ac.in', '8.92', 4);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2013660, 'Linda', 'Spencer', '1996-07-22 17:01:11', 1, 'H125', 'M1', 'B2', 130, 'ycummerata@iiitd.ac.in', '5.97', 4);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2013885, 'Lorenza', 'Langosh', '1995-09-21 05:49:31', 140525, 'H863', 'M3', 'B5', 99, 'boris02@iiitd.ac.in', '5.55', 4);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2013887, 'Alisha', 'Tremblay', '1998-07-28 07:14:06', 2147483647, 'H811', 'M3', 'B1', 20, 'kaylee.murazik@iiitd.ac.in', '6.34', 5);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2014043, 'Jonas', 'Russel', '1997-12-26 14:56:43', 0, 'H704', 'M3', 'B4', 98, 'rocio.sipes@iiitd.ac.in', '6', 6);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2014402, 'Nicholaus', 'Sauer', '1996-09-07 13:43:42', 1, 'H302', 'M3', 'B1', 127, 'odell.kutch@iiitd.ac.in', '6.66', 5);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2014470, 'Hilton', 'Grady', '2000-05-21 04:14:58', 0, 'H830', 'M3', 'B2', 81, 'bernhard.marquardt@iiitd.ac.in', '9.15', 7);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2014583, 'Magnolia', 'Wintheiser', '1998-10-17 22:44:00', 439, 'H945', 'M7', 'B3', 27, 'johan.leannon@iiitd.ac.in', '6.48', 2);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2014887, 'Cyril', 'Hoppe', '1998-02-16 20:31:50', 1, 'H605', 'M7', 'B2', 56, 'ofarrell@iiitd.ac.in', '7.33', 6);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2014901, 'Brook', 'Buckridge', '1999-01-29 14:14:42', 801284, 'H868', 'M7', 'B1', 145, 'skiles.palma@iiitd.ac.in', '5.88', 5);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2015040, 'Vergie', 'Gutmann', '2002-04-15 10:48:11', 89, 'H967', 'M7', 'B4', 79, 'patrick37@iiitd.ac.in', '9.41', 4);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2015087, 'Dedric', 'Dickinson', '2001-03-20 01:22:15', 1, 'H366', 'M3', 'B2', 147, 'marvin08@iiitd.ac.in', '7.7', 2);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2015432, 'Peter', 'Littel', '1996-08-10 03:02:01', 0, 'H598', 'M1', 'B1', 54, 'do\'kon@iiitd.ac.in', '7.53', 5);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2015518, 'Conrad', 'Mills', '1995-05-24 20:00:25', 983551, 'H539', 'M1', 'B4', 137, 'kshlerin.cale@iiitd.ac.in', '9.4', 7);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2015572, 'Kyler', 'O\'Kon', '2000-11-12 21:40:40', 1, 'H967', 'M3', 'B4', 141, 'feil.hayden@iiitd.ac.in', '7.29', 8);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2015582, 'Lily', 'Kiehn', '2001-11-05 23:11:27', 1, 'H637', 'M3', 'B3', 91, 'warren42@iiitd.ac.in', '7.08', 4);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2015687, 'Junior', 'Oberbrunner', '2000-01-01 04:03:16', 122, 'H896', 'M3', 'B2', 141, 'frunolfsson@iiitd.ac.in', '6.87', 1);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2015785, 'Vickie', 'Marks', '1998-07-12 14:25:05', 138, 'H598', 'M3', 'B1', 41, 'cjaskolski@iiitd.ac.in', '5.62', 7);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2015805, 'Vicenta', 'Bins', '2000-01-19 20:00:15', 0, 'H945', 'M1', 'B3', 31, 'karina63@iiitd.ac.in', '7.39', 4);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2016004, 'Adaline', 'Sporer', '1996-09-30 19:45:37', 0, 'H863', 'M3', 'B5', 52, 'natasha11@iiitd.ac.in', '5.66', 1);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2016133, 'Jeramie', 'Casper', '2000-02-20 16:55:28', 4, 'H980', 'M1', 'B5', 106, 'swift.jerald@iiitd.ac.in', '7.06', 4);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2016186, 'Lura', 'Spinka', '1998-11-03 14:37:36', 733, 'H417', 'M3', 'B3', 80, 'cassin.vincent@iiitd.ac.in', '8.05', 4);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2016262, 'Delia', 'Thiel', '1997-01-21 14:03:54', 2147483647, 'H859', 'M7', 'B4', 96, 'giovanni87@iiitd.ac.in', '6.3', 1);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2016304, 'Henriette', 'Berge', '1999-10-13 08:44:21', 568990, 'H125', 'M3', 'B2', 141, 'tgraham@iiitd.ac.in', '9.78', 5);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2016417, 'Flossie', 'Turner', '1995-05-26 18:46:02', 0, 'H980', 'M7', 'B5', 114, 'rosetta.reilly@iiitd.ac.in', '6.64', 6);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2016436, 'Tad', 'Bins', '1998-06-08 01:06:19', 1, 'H152', 'M3', 'B3', 52, 'heloise.russel@iiitd.ac.in', '7.69', 2);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2016893, 'Ludwig', 'Volkman', '1997-06-27 08:58:40', 0, 'H830', 'M7', 'B2', 63, 'simeon12@iiitd.ac.in', '5.86', 8);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2017012, 'Mazie', 'Schroeder', '1997-09-12 21:35:20', 544258, 'H125', 'M3', 'B2', 93, 'maya37@iiitd.ac.in', '7.72', 2);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2017357, 'Lacey', 'Ritchie', '1996-06-03 13:36:47', 49, 'H564', 'M7', 'B5', 111, 'joshuah68@iiitd.ac.in', '7.84', 2);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2017375, 'Violet', 'Wintheiser', '1996-11-20 02:42:08', 1, 'H161', 'M1', 'B4', 121, 'vernie97@iiitd.ac.in', '8.06', 1);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2017409, 'Amya', 'Rogahn', '1999-02-17 17:53:31', 739350, 'H417', 'M3', 'B3', 58, 'elinor79@iiitd.ac.in', '6.23', 2);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2017494, 'Frieda', 'Treutel', '1996-09-14 19:40:37', 1, 'H125', 'M7', 'B2', 29, 'rahul79@iiitd.ac.in', '6.57', 3);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2017549, 'Karl', 'Labadie', '1996-09-24 02:13:19', 0, 'H778', 'M3', 'B5', 109, 'cleo.satterfield@iiitd.ac.in', '5.5', 8);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2017702, 'Jeanne', 'Bailey', '1997-10-28 23:02:11', 0, 'H539', 'M7', 'B4', 95, 'sporer.thurman@iiitd.ac.in', '6.26', 8);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2017733, 'Lavinia', 'Hermiston', '2002-02-27 02:34:00', 2, 'H637', 'M1', 'B3', 123, 'tristin.ullrich@iiitd.ac.in', '6.48', 4);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2017782, 'Kraig', 'Wyman', '1998-05-30 23:22:21', 462, 'H197', 'M3', 'B5', 72, 'rebeka15@iiitd.ac.in', '8.1', 6);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2017858, 'Camron', 'Boyer', '2000-09-14 08:17:48', 692294, 'H152', 'M1', 'B3', 81, 'greenholt.christop@iiitd.ac.in', '9.26', 2);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2017982, 'Libby', 'Borer', '2001-02-08 20:02:09', 1, 'H868', 'M7', 'B1', 66, 'grover05@iiitd.ac.in', '8.34', 2);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2018375, 'Angeline', 'Little', '1997-06-07 17:35:35', 25, 'H980', 'M1', 'B5', 74, 'vella00@iiitd.ac.in', '5.86', 7);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2018458, 'Jordan', 'Bergstrom', '1998-02-04 06:13:41', 358423160, 'H811', 'M7', 'B1', 123, 'vpollich@iiitd.ac.in', '8.64', 7);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2018466, 'Dovie', 'Lakin', '1997-03-24 17:44:16', 1, 'H059', 'M1', 'B1', 44, 'princess.heaney@iiitd.ac.in', '6.44', 1);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2018555, 'Samanta', 'Crona', '1997-04-05 18:53:27', 1, 'H302', 'M7', 'B1', 84, 'coby51@iiitd.ac.in', '8.89', 7);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2018776, 'Hermann', 'Adams', '1998-06-15 22:29:22', 2147483647, 'H637', 'M7', 'B3', 91, 'wuckert.chloe@iiitd.ac.in', '8.17', 6);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2018830, 'Kenya', 'Hirthe', '1995-10-28 15:44:33', 718, 'H366', 'M7', 'B2', 97, 'kyleigh.morissette@iiitd.ac.in', '7.16', 1);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2018959, 'Gretchen', 'Corkery', '2001-08-05 01:36:02', 0, 'H152', 'M7', 'B3', 104, 'bhodkiewicz@iiitd.ac.in', '9.76', 6);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2019063, 'Emelie', 'Gulgowski', '1997-08-08 10:04:06', 2147483647, 'H859', 'M3', 'B4', 139, 'lowell72@iiitd.ac.in', '8.17', 3);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2019179, 'Maxime', 'Ratke', '1998-07-15 04:29:35', 1, 'H778', 'M7', 'B5', 145, 'wolff.christopher@iiitd.ac.in', '8.68', 1);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2019254, 'Chadrick', 'Goldner', '1999-07-06 11:04:13', 48, 'H605', 'M3', 'B2', 106, 'gsteuber@iiitd.ac.in', '6.09', 4);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2019325, 'Rebeca', 'Hartmann', '1997-12-28 19:16:32', 0, 'H868', 'M3', 'B1', 56, 'ian.bergnaum@iiitd.ac.in', '5.64', 1);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2019468, 'Toney', 'Walter', '1997-05-16 19:34:25', 516, 'H967', 'M1', 'B4', 37, 'domenica.daniel@iiitd.ac.in', '8.51', 1);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2019496, 'Orval', 'Kessler', '2000-01-29 11:11:56', 526, 'H161', 'M7', 'B4', 42, 'wilber.herzog@iiitd.ac.in', '5.09', 1);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2019615, 'Earnestine', 'Yost', '1999-08-27 18:47:30', 987, 'H896', 'M7', 'B2', 20, 'reynolds.aubrey@iiitd.ac.in', '9.59', 1);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2019617, 'Arnulfo', 'Adams', '1998-08-03 07:46:44', 688747, 'H598', 'M3', 'B1', 72, 'johnson.darrick@iiitd.ac.in', '7.41', 3);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2019676, 'Eloisa', 'Casper', '1998-03-24 03:30:46', 1, 'H059', 'M7', 'B1', 112, 'torp.ronaldo@iiitd.ac.in', '8.71', 1);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2019710, 'Ava', 'Conroy', '2002-02-26 07:43:10', 0, 'H197', 'M1', 'B5', 121, 'hettinger.eleanora@iiitd.ac.in', '6.12', 6);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2019772, 'Nicole', 'Mann', '1996-10-24 22:01:57', 105, 'H830', 'M3', 'B2', 35, 'rahsaan26@iiitd.ac.in', '5.22', 2);
INSERT INTO `Students` (`RollNo`, `First_Name`, `Last_Name`, `DOB`, `phone_no`, `Hostel_ID`, `MessID`, `BranchID`, `Credits`, `email`, `Grade`, `CurrentSemester`) VALUES (2019966, 'Jammie', 'Klein', '2001-05-22 04:53:13', 25, 'H830', 'M1', 'B2', 41, 'barton.dandre@iiitd.ac.in', '6.35', 3);


#
# TABLE STRUCTURE FOR: TAsin
#

DROP TABLE IF EXISTS `TAsin`;

CREATE TABLE `TAsin` (
  `RollNo` int(11) NOT NULL,
  `CourseCode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Semester` int(11) NOT NULL,
  PRIMARY KEY (`RollNo`,`CourseCode`,`Semester`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `TAsin` (`RollNo`, `CourseCode`, `Semester`) VALUES (2010186, 'CSE056', 6);
INSERT INTO `TAsin` (`RollNo`, `CourseCode`, `Semester`) VALUES (2010660, 'CSE064', 1);
INSERT INTO `TAsin` (`RollNo`, `CourseCode`, `Semester`) VALUES (2010746, 'CSE102', 3);
INSERT INTO `TAsin` (`RollNo`, `CourseCode`, `Semester`) VALUES (2010953, 'CSE183', 5);
INSERT INTO `TAsin` (`RollNo`, `CourseCode`, `Semester`) VALUES (2011610, 'CSE211', 5);
INSERT INTO `TAsin` (`RollNo`, `CourseCode`, `Semester`) VALUES (2012000, 'CSE243', 5);
INSERT INTO `TAsin` (`RollNo`, `CourseCode`, `Semester`) VALUES (2012141, 'CSE327', 2);
INSERT INTO `TAsin` (`RollNo`, `CourseCode`, `Semester`) VALUES (2013092, 'CSE345', 7);
INSERT INTO `TAsin` (`RollNo`, `CourseCode`, `Semester`) VALUES (2014766, 'CSE346', 7);
INSERT INTO `TAsin` (`RollNo`, `CourseCode`, `Semester`) VALUES (2014838, 'CSE413', 4);
INSERT INTO `TAsin` (`RollNo`, `CourseCode`, `Semester`) VALUES (2014859, 'CSE459', 6);
INSERT INTO `TAsin` (`RollNo`, `CourseCode`, `Semester`) VALUES (2014927, 'CSE476', 1);
INSERT INTO `TAsin` (`RollNo`, `CourseCode`, `Semester`) VALUES (2015335, 'CSE501', 3);
INSERT INTO `TAsin` (`RollNo`, `CourseCode`, `Semester`) VALUES (2015689, 'CSE515', 2);
INSERT INTO `TAsin` (`RollNo`, `CourseCode`, `Semester`) VALUES (2015695, 'CSE540', 1);


#
# TABLE STRUCTURE FOR: inMess
#

DROP TABLE IF EXISTS `inMess`;

CREATE TABLE `inMess` (
  `RollNo` int(8) NOT NULL,
  `MessID` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `Month` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`RollNo`,`MessID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `inMess` (`RollNo`, `MessID`, `Month`) VALUES (2010265, 'M1', '5');
INSERT INTO `inMess` (`RollNo`, `MessID`, `Month`) VALUES (2010270, 'M3', '6');
INSERT INTO `inMess` (`RollNo`, `MessID`, `Month`) VALUES (2010287, 'M7', '2');
INSERT INTO `inMess` (`RollNo`, `MessID`, `Month`) VALUES (2010410, 'M1', '2');
INSERT INTO `inMess` (`RollNo`, `MessID`, `Month`) VALUES (2010476, 'M3', '2');
INSERT INTO `inMess` (`RollNo`, `MessID`, `Month`) VALUES (2010672, 'M7', '2');
INSERT INTO `inMess` (`RollNo`, `MessID`, `Month`) VALUES (2010686, 'M1', '9');
INSERT INTO `inMess` (`RollNo`, `MessID`, `Month`) VALUES (2010716, 'M3', '9');
INSERT INTO `inMess` (`RollNo`, `MessID`, `Month`) VALUES (2010737, 'M7', '8');
INSERT INTO `inMess` (`RollNo`, `MessID`, `Month`) VALUES (2010769, 'M1', '5');
INSERT INTO `inMess` (`RollNo`, `MessID`, `Month`) VALUES (2010892, 'M3', '1');
INSERT INTO `inMess` (`RollNo`, `MessID`, `Month`) VALUES (2011122, 'M7', '9');
INSERT INTO `inMess` (`RollNo`, `MessID`, `Month`) VALUES (2011152, 'M1', '5');
INSERT INTO `inMess` (`RollNo`, `MessID`, `Month`) VALUES (2011173, 'M3', '5');
INSERT INTO `inMess` (`RollNo`, `MessID`, `Month`) VALUES (2011182, 'M7', '4');
INSERT INTO `inMess` (`RollNo`, `MessID`, `Month`) VALUES (2011486, 'M1', '1');
INSERT INTO `inMess` (`RollNo`, `MessID`, `Month`) VALUES (2011517, 'M3', '5');
INSERT INTO `inMess` (`RollNo`, `MessID`, `Month`) VALUES (2011634, 'M7', '5');
INSERT INTO `inMess` (`RollNo`, `MessID`, `Month`) VALUES (2011804, 'M1', '7');
INSERT INTO `inMess` (`RollNo`, `MessID`, `Month`) VALUES (2011917, 'M3', '1');
INSERT INTO `inMess` (`RollNo`, `MessID`, `Month`) VALUES (2011991, 'M7', '7');
INSERT INTO `inMess` (`RollNo`, `MessID`, `Month`) VALUES (2012200, 'M1', '2');
INSERT INTO `inMess` (`RollNo`, `MessID`, `Month`) VALUES (2012225, 'M3', '1');
INSERT INTO `inMess` (`RollNo`, `MessID`, `Month`) VALUES (2012281, 'M7', '1');
INSERT INTO `inMess` (`RollNo`, `MessID`, `Month`) VALUES (2012330, 'M1', '4');
INSERT INTO `inMess` (`RollNo`, `MessID`, `Month`) VALUES (2012334, 'M3', '9');
INSERT INTO `inMess` (`RollNo`, `MessID`, `Month`) VALUES (2012392, 'M7', '8');
INSERT INTO `inMess` (`RollNo`, `MessID`, `Month`) VALUES (2012507, 'M1', '5');
INSERT INTO `inMess` (`RollNo`, `MessID`, `Month`) VALUES (2012586, 'M3', '9');
INSERT INTO `inMess` (`RollNo`, `MessID`, `Month`) VALUES (2012615, 'M7', '4');
INSERT INTO `inMess` (`RollNo`, `MessID`, `Month`) VALUES (2012616, 'M1', '8');
INSERT INTO `inMess` (`RollNo`, `MessID`, `Month`) VALUES (2012664, 'M3', '2');
INSERT INTO `inMess` (`RollNo`, `MessID`, `Month`) VALUES (2012745, 'M7', '3');
INSERT INTO `inMess` (`RollNo`, `MessID`, `Month`) VALUES (2012808, 'M1', '3');
INSERT INTO `inMess` (`RollNo`, `MessID`, `Month`) VALUES (2012828, 'M3', '9');
INSERT INTO `inMess` (`RollNo`, `MessID`, `Month`) VALUES (2012931, 'M7', '4');
INSERT INTO `inMess` (`RollNo`, `MessID`, `Month`) VALUES (2013033, 'M1', '6');
INSERT INTO `inMess` (`RollNo`, `MessID`, `Month`) VALUES (2013056, 'M3', '1');
INSERT INTO `inMess` (`RollNo`, `MessID`, `Month`) VALUES (2013087, 'M7', '5');
INSERT INTO `inMess` (`RollNo`, `MessID`, `Month`) VALUES (2013103, 'M1', '2');
INSERT INTO `inMess` (`RollNo`, `MessID`, `Month`) VALUES (2013125, 'M3', '9');
INSERT INTO `inMess` (`RollNo`, `MessID`, `Month`) VALUES (2013278, 'M7', '9');
INSERT INTO `inMess` (`RollNo`, `MessID`, `Month`) VALUES (2013324, 'M1', '3');
INSERT INTO `inMess` (`RollNo`, `MessID`, `Month`) VALUES (2013594, 'M3', '4');
INSERT INTO `inMess` (`RollNo`, `MessID`, `Month`) VALUES (2013660, 'M7', '5');
INSERT INTO `inMess` (`RollNo`, `MessID`, `Month`) VALUES (2013885, 'M1', '3');
INSERT INTO `inMess` (`RollNo`, `MessID`, `Month`) VALUES (2013887, 'M3', '6');
INSERT INTO `inMess` (`RollNo`, `MessID`, `Month`) VALUES (2014043, 'M7', '2');
INSERT INTO `inMess` (`RollNo`, `MessID`, `Month`) VALUES (2014402, 'M1', '4');
INSERT INTO `inMess` (`RollNo`, `MessID`, `Month`) VALUES (2014470, 'M3', '4');


#
# TABLE STRUCTURE FOR: isCoreOf
#

DROP TABLE IF EXISTS `isCoreOf`;

CREATE TABLE `isCoreOf` (
  `BranchID` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `CourseCode` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `Semester` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`BranchID`,`CourseCode`,`Semester`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `isCoreOf` (`BranchID`, `CourseCode`, `Semester`) VALUES ('B1', 'CSE056', 'Monsoon');
INSERT INTO `isCoreOf` (`BranchID`, `CourseCode`, `Semester`) VALUES ('B1', 'CSE243', 'Summer');
INSERT INTO `isCoreOf` (`BranchID`, `CourseCode`, `Semester`) VALUES ('B1', 'CSE459', 'Monsoon');
INSERT INTO `isCoreOf` (`BranchID`, `CourseCode`, `Semester`) VALUES ('B1', 'CSE562', 'Summer');
INSERT INTO `isCoreOf` (`BranchID`, `CourseCode`, `Semester`) VALUES ('B2', 'CSE064', 'Summer');
INSERT INTO `isCoreOf` (`BranchID`, `CourseCode`, `Semester`) VALUES ('B2', 'CSE327', 'Summer');
INSERT INTO `isCoreOf` (`BranchID`, `CourseCode`, `Semester`) VALUES ('B2', 'CSE476', 'Summer');
INSERT INTO `isCoreOf` (`BranchID`, `CourseCode`, `Semester`) VALUES ('B2', 'CSE577', 'Summer');
INSERT INTO `isCoreOf` (`BranchID`, `CourseCode`, `Semester`) VALUES ('B3', 'CSE102', 'Monsoon');
INSERT INTO `isCoreOf` (`BranchID`, `CourseCode`, `Semester`) VALUES ('B3', 'CSE345', 'Summer');
INSERT INTO `isCoreOf` (`BranchID`, `CourseCode`, `Semester`) VALUES ('B3', 'CSE501', 'Winter');
INSERT INTO `isCoreOf` (`BranchID`, `CourseCode`, `Semester`) VALUES ('B3', 'CSE588', 'Summer');
INSERT INTO `isCoreOf` (`BranchID`, `CourseCode`, `Semester`) VALUES ('B4', 'CSE183', 'Winter');
INSERT INTO `isCoreOf` (`BranchID`, `CourseCode`, `Semester`) VALUES ('B4', 'CSE346', 'Monsoon');
INSERT INTO `isCoreOf` (`BranchID`, `CourseCode`, `Semester`) VALUES ('B4', 'CSE515', 'Monsoon');
INSERT INTO `isCoreOf` (`BranchID`, `CourseCode`, `Semester`) VALUES ('B4', 'CSE665', 'Monsoon');
INSERT INTO `isCoreOf` (`BranchID`, `CourseCode`, `Semester`) VALUES ('B5', 'CSE211', 'Winter');
INSERT INTO `isCoreOf` (`BranchID`, `CourseCode`, `Semester`) VALUES ('B5', 'CSE413', 'Summer');
INSERT INTO `isCoreOf` (`BranchID`, `CourseCode`, `Semester`) VALUES ('B5', 'CSE540', 'Monsoon');
INSERT INTO `isCoreOf` (`BranchID`, `CourseCode`, `Semester`) VALUES ('B5', 'CSE706', 'Winter');


#
# TABLE STRUCTURE FOR: prereq
#

DROP TABLE IF EXISTS `prereq`;

CREATE TABLE `prereq` (
  `CourseCode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `PrereqCode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`CourseCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `prereq` (`CourseCode`, `PrereqCode`) VALUES ('CSE056', 'CSE102');
INSERT INTO `prereq` (`CourseCode`, `PrereqCode`) VALUES ('CSE102', 'CSE064');
INSERT INTO `prereq` (`CourseCode`, `PrereqCode`) VALUES ('CSE183', 'CSE243');
INSERT INTO `prereq` (`CourseCode`, `PrereqCode`) VALUES ('CSE327', 'CSE211');
INSERT INTO `prereq` (`CourseCode`, `PrereqCode`) VALUES ('CSE345', 'CSE413');
INSERT INTO `prereq` (`CourseCode`, `PrereqCode`) VALUES ('CSE515', 'CSE327');
INSERT INTO `prereq` (`CourseCode`, `PrereqCode`) VALUES ('CSE706', 'CSE056');
INSERT INTO `prereq` (`CourseCode`, `PrereqCode`) VALUES ('CSE736', 'CSE346');
INSERT INTO `prereq` (`CourseCode`, `PrereqCode`) VALUES ('CSE989', 'CSE183');


#
# TABLE STRUCTURE FOR: takes
#

DROP TABLE IF EXISTS `takes`;

CREATE TABLE `takes` (
  `RollNo` int(11) NOT NULL,
  `CourseCode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Semester` int(11) NOT NULL,
  `Grade` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`RollNo`,`CourseCode`,`Semester`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2010265, 'CSE056', 4, '8');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2010270, 'CSE064', 3, '5');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2010287, 'CSE102', 5, '7');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2010410, 'CSE183', 2, '5');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2010476, 'CSE211', 7, '5');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2010672, 'CSE243', 8, '9');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2010686, 'CSE327', 2, '8');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2010716, 'CSE345', 1, '10');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2010737, 'CSE346', 7, '6');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2010769, 'CSE413', 4, '6');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2010892, 'CSE459', 8, '10');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2011122, 'CSE476', 4, '6');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2011152, 'CSE501', 4, '5');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2011173, 'CSE515', 4, '8');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2011182, 'CSE540', 3, '6');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2011486, 'CSE562', 1, '5');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2011517, 'CSE577', 3, '10');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2011634, 'CSE588', 8, '5');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2011804, 'CSE665', 6, '6');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2011917, 'CSE706', 8, '10');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2011991, 'CSE736', 5, '9');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2012200, 'CSE752', 6, '6');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2012225, 'CSE832', 8, '8');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2012281, 'CSE889', 1, '7');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2012330, 'CSE895', 5, '6');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2012334, 'CSE929', 1, '9');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2012392, 'CSE952', 6, '9');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2012507, 'CSE978', 1, '9');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2012586, 'CSE989', 1, '5');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2012615, 'CSE999', 7, '10');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2012616, 'CSE056', 3, '8');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2012664, 'CSE064', 3, '7');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2012745, 'CSE102', 6, '5');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2012808, 'CSE183', 2, '10');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2012828, 'CSE211', 3, '8');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2012931, 'CSE243', 3, '9');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2013033, 'CSE327', 3, '7');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2013056, 'CSE345', 8, '7');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2013087, 'CSE346', 5, '10');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2013103, 'CSE413', 8, '5');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2013125, 'CSE459', 3, '6');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2013278, 'CSE476', 4, '7');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2013324, 'CSE501', 2, '10');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2013594, 'CSE515', 1, '7');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2013660, 'CSE540', 3, '5');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2013885, 'CSE562', 1, '5');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2013887, 'CSE577', 3, '6');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2014043, 'CSE588', 5, '10');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2014402, 'CSE665', 6, '7');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2014470, 'CSE706', 6, '9');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2014583, 'CSE736', 6, '6');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2014887, 'CSE752', 4, '8');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2014901, 'CSE832', 5, '6');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2015040, 'CSE889', 8, '9');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2015087, 'CSE895', 8, '5');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2015432, 'CSE929', 2, '7');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2015518, 'CSE952', 4, '5');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2015572, 'CSE978', 3, '7');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2015582, 'CSE989', 7, '7');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2015687, 'CSE999', 5, '9');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2015785, 'CSE056', 1, '9');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2015805, 'CSE064', 4, '9');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2016004, 'CSE102', 2, '7');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2016133, 'CSE183', 3, '8');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2016186, 'CSE211', 6, '5');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2016262, 'CSE243', 4, '10');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2016304, 'CSE327', 3, '9');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2016417, 'CSE345', 7, '10');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2016436, 'CSE346', 2, '7');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2016893, 'CSE413', 7, '6');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2017012, 'CSE459', 6, '10');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2017357, 'CSE476', 4, '7');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2017375, 'CSE501', 2, '7');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2017409, 'CSE515', 4, '6');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2017494, 'CSE540', 1, '6');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2017549, 'CSE562', 5, '8');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2017702, 'CSE577', 2, '10');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2017733, 'CSE588', 4, '6');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2017782, 'CSE665', 1, '5');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2017858, 'CSE706', 2, '7');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2017982, 'CSE736', 5, '10');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2018375, 'CSE752', 2, '10');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2018458, 'CSE832', 6, '7');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2018466, 'CSE889', 2, '6');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2018555, 'CSE895', 5, '9');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2018776, 'CSE929', 2, '6');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2018830, 'CSE952', 2, '10');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2018959, 'CSE978', 5, '6');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2019063, 'CSE989', 3, '8');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2019179, 'CSE999', 3, '7');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2019254, 'CSE056', 4, '6');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2019325, 'CSE064', 3, '9');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2019468, 'CSE102', 1, '7');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2019496, 'CSE183', 3, '5');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2019615, 'CSE211', 3, '10');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2019617, 'CSE243', 5, '8');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2019676, 'CSE327', 7, '8');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2019710, 'CSE345', 3, '5');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2019772, 'CSE346', 3, '7');
INSERT INTO `takes` (`RollNo`, `CourseCode`, `Semester`, `Grade`) VALUES (2019966, 'CSE413', 6, '10');


