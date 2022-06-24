/*
Page 62
Figure 3.1 SQL data definition for part of the university database
create table
*/



/*
Page 62
Figure 3.1 SQL data definition for part of the university database
create table
*/
create table department
(
    dept_name varchar(20),
    building varchar(15),
    budget numeric(12,2),
    primary key(dept_name)
);
/*
dept_name	building	budget
Biology	Watson	90000
Comp. Sci.	Taylor	100000
Elec. Eng.	Taylor	85000
Finance	Painter	120000
History	Painter	50000
Music	Packard	80000
Physics	Watson	70000
*/
--drop table 
drop table department

insert into department (dept_name, building, budget)
values
    ('Biology', 'Watson', 90000),
    ('Comp.Sci.', 'Taylor', 100000),
    ('Elec.Eng.', 'Taylor', 85000),
    ('Finance', 'Painter', 120000),
    ('History', 'Painter', 50000),
    ('Music', 'Packard', 80000),
    ('Physics', 'Watson', 70000 )
SELECT *
from department
/******************************************************/
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

create table instructor
(
    ID varchar(5),
    name varchar(20) not null,
    dept_name varchar(20),
    salary numeric(8,2),
    primary key(ID),
    foreign key(dept_name) references department
);
--drop table 
drop table instructor

/*
ID		name			dept_name	salary
10101	Srinivasan		Comp.Sci.	65000
12121	Wu				Finance		90000
15151	Mozart			Music		40000
22222	Einstein		Physics		95000
32343	El Said			History		60000
33456	Gold			Physics		87000
45565	Katz			Comp.Sci.	75000
58583	Califieri		History		62000
76543	Singh			Finance		80000
76766	Crick			Biology		72000
83821	Brandt			Comp.Sci.	92000
98345	Kim				Elec.Eng.	80000
*/
--insert into instructor table
insert into instructor(ID, name, dept_name, salary)
values
('10101',	'Srinivasan',		'Comp.Sci.'	,65000),
('12121',	'Wu',				'Finance'	,90000),
('15151',	'Mozart',			'Music'		,40000),
('22222',	'Einstein',		    'Physics'	,95000),
('32343',	'El Said',		    'History'	, 60000),
('33456',	'Gold',			    'Physics'	,87000),
('45565',	'Katz',			    'Comp.Sci.'	,75000),
('58583',	'Califieri',		'History'	,62000),
('76543',	'Singh',			'Finance'	,80000),
('76766',	'Crick',			'Biology'	,72000),
('83821',	'Brandt',			'Comp.Sci.'	,92000),
('98345',	'Kim',				'Elec.Eng.'	,80000);

SELECT * from instructor



insert into instructor
values(10211, 'Smith', 'Biology', 66000);

--********************************************--
create table section
(
    course_id varchar(7),
    sec_id varchar(8),
    semester varchar(6),
    year numeric(4,0),
    bulding varchar(15),
    room_number varchar(7),
    time_slot_id varchar(4),
    primary key(course_id, sec_id, semester, year),
    foreign key(course_id) references course
);

--drop table 
drop table section

/*
('BIO-101',	    1,	'Summer',	2017,	'Painter',	514	 ,   'B'),
('BIO-301',	    1,	'Summer',	2018,	'Painter',	514	 ,   'A'),
('CS-101',	    1,	'Fall',	    2017,	'Packard',	101	 ,   'H'),
('CS-101',	    1,	'Spring',	2018,	'Packard',	101	 ,   'F'),
('CS-190',	    1,	'Spring',	2017,	'Taylor',	3128,	'E'),
('CS-190',	    2,	'Spring',	2017,	'Taylor',	3128,	'A'),
('CS-315',	    1,	'Spring',	2018,	'Watson',	120	 ,   'D'),
('CS-319',	    1,	'Spring',	2018,	'Watson',	100	  ,  'B'),
('CS-319',	    2,	'Spring',	2018,	'Taylor',	3128,	'C'),
('CS-347',	    1,	'Fall',	    2017,	'Taylor',	3128,	'A'),
('EE-181',	    1,	'Spring',	2017,	'Taylor',	3128,	'C'),
('FIN-201',	    1,	'Spring',	2018,	'Packard',	101	 ,   'B'),
('HIS-351',	    1,	'Spring',	2018,	'Painter',	514	 ,   'C'),
('MU-199',	    1,	'Spring',	2018,	'Packard',	101	 ,   'D'),
('PHY-101',	    1,	'Fall',	    2017,	'Watson,'	100	  ,  'A'),
*/

insert into section
values 
('BIO-101',	    1,	'Summer',	2017,	'Painter',	514	 ,   'B'),
('BIO-301',	    1,	'Summer',	2018,	'Painter',	514	 ,   'A'),
('CS-101',	    1,	'Fall',	    2017,	'Packard',	101	 ,   'H'),
('CS-101',	    1,	'Spring',	2018,	'Packard',	101	 ,   'F'),
('CS-190',	    1,	'Spring',	2017,	'Taylor',	3128,	'E'),
('CS-190',	    2,	'Spring',	2017,	'Taylor',	3128,	'A'),
('CS-315',	    1,	'Spring',	2018,	'Watson',	120	 ,   'D'),
('CS-319',	    1,	'Spring',	2018,	'Watson',	100	  ,  'B'),
('CS-319',	    2,	'Spring',	2018,	'Taylor',	3128,	'C'),
('CS-347',	    1,	'Fall',	    2017,	'Taylor',	3128,	'A'),
('EE-181',	    1,	'Spring',	2017,	'Taylor',	3128,	'C'),
('FIN-201',	    1,	'Spring',	2018,	'Packard',	101	 ,   'B'),
('HIS-351',	    1,	'Spring',	2018,	'Painter',	514	 ,   'C'),
('MU-199',	    1,	'Spring',	2018,	'Packard',	101	 ,   'D'),
('PHY-101',	    1,	'Fall',	    2017,	'Watson,',	100	  ,  'A');
SELECT * From section

--************************************--
create table teaches
(
    ID varchar(5),
    course_id varchar(7),
    sec_id varchar(8),
    semester varchar(6),
    year numeric(4,0),
    primary key(ID, course_id, sec_id, semester, year),
    foreign key(course_id, sec_id, semester,year) references section,
    foreign key(ID) references instructor
);

--drop table 
drop table teaches


insert into teaches
values
('10101',	'CS-101'    ,1,	'Fall'   , 2017),
('10101',	'CS-315'	,1,	'Spring' ,	2018),
('10101',	'CS-347'	,1,	'Fall'   ,  2017),
('12121',	'FIN-201'   ,1,	'Spring' ,	2018),
('15151',	'MU-199'	,1,	'Spring' ,	2018),
('22222',	'PHY-101'   ,1,	'Fall'   ,  2017),
('32343',	'HIS-351'   ,1,	'Spring' ,	2018),
('45565',	'CS-101'	,1,	'Spring' ,	2018),
('45565',	'CS-319'	,1,	'Spring' ,	2018),
('76766',	'BIO-101'   ,1,	'Summer' ,	2017),
('76766',	'BIO-301'   ,1,	'Summer' ,	2018),
('83821',	'CS-190'	,1,	'Spring' ,	2017),
('83821',	'CS-190'	,2,	'Spring' ,	2017),
('83821',	'CS-319'	,2,	'Spring' ,	2018),
('98345',	'EE-181'	,1,	'Spring' ,	2017);

select * from teaches