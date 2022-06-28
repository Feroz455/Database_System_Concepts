/*
Page 62
Figure 3.1 SQL data definition for part of the university database
create table
*/
--*******************************************--
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