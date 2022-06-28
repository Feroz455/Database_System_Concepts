/*
Page 62
Figure 3.1 SQL data definition for part of the university database
create table
*/
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