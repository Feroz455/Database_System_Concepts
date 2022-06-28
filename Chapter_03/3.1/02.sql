select * from department

select * from instructor

select * from section

select * from teaches

select * from course

/*
figure 3.2 
result of select name from instructor
*/

select name from instructor
/*
Srinivasan
Smith
Wu
Mozart
Einstein
El Said
Gold
Katz
Califieri
Singh
Crick
Brandt
Kim
*/


select dept_name from instructor
/*
Comp.Sci.
Biology
Finance
Music
Physics
History
Physics
Comp.Sci.
History
Finance
Biology
Comp.Sci.
Elec.Eng.
*/

--distinct
select distinct dept_name from instructor
/*
Biology
Comp.Sci.
Elec.Eng.
Finance
History
Music
Physics
*/

--all keyword 
select all dept_name from instructor

/*
Comp.Sci.
Biology
Finance
Music
Physics
History
Physics
Comp.Sci.
History
Finance
Biology
Comp.Sci.
Elec.Eng.
*/


--arithmetic operation

select ID, name, dept_name, salary*1.1 from instructor
/*
select * from instructor
befor increase
10101	Srinivasan	Comp.Sci.	65000.00
10211	Smith		Biology		66000.00
12121	Wu			Finance		90000.00
15151	Mozart		Music		40000.00
22222	Einstein	Physics		95000.00
32343	El Said		History		60000.00
33456	Gold		Physics		87000.00
45565	Katz		Comp.Sci.	75000.00
58583	Califieri	History		62000.00
76543	Singh		Finance		80000.00
76766	Crick		Biology		72000.00
83821	Brandt		Comp.Sci.	92000.00
98345	Kim			Elec.Eng.	80000.00

--10% increase
10101	Srinivasan	Comp.Sci.	71500.000
10211	Smith		Biology		72600.000
12121	Wu			Finance		99000.000
15151	Mozart		Music		44000.000
22222	Einstein	Physics		104500.000
32343	El Said		History		66000.000
33456	Gold		Physics		95700.000
45565	Katz		Comp.Sci.	82500.000
58583	Califieri	History		68200.000
76543	Singh		Finance		88000.000
76766	Crick		Biology		79200.000
83821	Brandt		Comp.Sci.	101200.000
98345	Kim			Elec.Eng.	88000.000
*/

--where keyword 

select name 
from instructor
where (dept_name = 'Comp.Sci.') and (salary > 70000)
/*
Katz
Brandt
*/