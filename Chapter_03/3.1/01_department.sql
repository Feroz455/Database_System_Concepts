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