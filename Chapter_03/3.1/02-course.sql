/*
Page 62
Figure 3.1 SQL data definition for part of the university database
create table
*/
--*****************************************--

create table course
(
    course_id varchar(7),
    title varchar(50),
    dept_name varchar(20),
    credits numeric(2,0),
    primary key(course_id),
    foreign key(dept_name) references department
);
--drop table 
drop table course

--input
/*
BIO-101	Intro. to Biology	        Biology	4
BIO-301	Genetics	                Biology	4
BIO-399	Computational Biology	    Biology	3
CS-101	Intro. to Computer Science	Comp. Sci.	4
CS-190	Game Design	                Comp. Sci.	4
CS-315	Robotics	                Comp. Sci.	3
CS-319	Image Processing	        Comp. Sci.	3
CS-347	Database System Concepts	Comp. Sci.	3
EE-181	Intro. to Digital Systems	Elec. Eng.	3
FIN-201	Investment Banking      	Finance	3
HIS-351	World History	            History	3
MU-199	Music Video                 Production	Music	3
PHY-101	Physical Principles	        Physics	4
*/
INSERT into course (course_id, title, dept_name, credits)
values ('BIO-101' , 'Intro. to Biology', 'Biology', 4)

INSERT into course (course_id, title, dept_name, credits)
values('BIO-301', 'Genetics', 'Biology', 4)

INSERT into course (course_id, title, dept_name, credits)
values('BIO-399', 'Computational Biology', 'Biology', 3)

INSERT into course (course_id, title, dept_name, credits)
values('CS-101', 'Intro. to Computer Science', 'Comp.Sci.', 4)

INSERT into course (course_id, title, dept_name, credits)
values('CS-190', 'Game Design', 'Comp.Sci.', 3)

INSERT into course (course_id, title, dept_name, credits)
values('CS-315', 'Robotics', 'Comp.Sci.', 3)

INSERT into course (course_id, title, dept_name, credits)
values('CS-319', 'Image Processing', 'Comp.Sci.', 3)

INSERT into course (course_id, title, dept_name, credits)
values('CS-347', 'Database System Concepts', 'Comp.Sci.', 3)

INSERT into course (course_id, title, dept_name, credits)
values('EE-181', 'Intro. to Digital Systems', 'Elec.Eng.', 3)

INSERT into course (course_id, title, dept_name, credits)
values('FIN-201', 'Investment Banking ', 'Finance', 3)

INSERT into course (course_id, title, dept_name, credits)
values('HIS-351', 'World History', 'History', 3)

INSERT into course (course_id, title, dept_name, credits)
values('MU-199', 'Music Video Production', 'Music', 3 )

INSERT into course (course_id, title, dept_name, credits)
values('PHY-101', 'Physical Principles', 'Physics', 4)


--output
SELECT *
from course

/*************************************************/