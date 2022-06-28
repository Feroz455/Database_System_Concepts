/*
Page 62
Figure 3.1 SQL data definition for part of the university database
create table
*/
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