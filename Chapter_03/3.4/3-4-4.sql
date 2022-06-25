/*
Page 77
Orderring the Display Tuples
*/

select name, dept_name
from instructor
where dept_name = 'Physics'
order by name

/*
Einstein	Physics
Gold	Physics
*/

select *
From instructor
order by salary desc, name asc;

/*
22222	Einstein	Physics	95000.00
83821	Brandt		Comp.Sci.	92000.00
12121	Wu			Finance	90000.00
33456	Gold		Physics	87000.00
98345	Kim			Elec.Eng.	80000.00
76543	Singh		Finance	80000.00
45565	Katz		Comp.Sci.	75000.00
76766	Crick		Biology	72000.00
10211	Smith		Biology	66000.00
10101	Srinivasan	Comp.Sci.	65000.00
58583	Califieri	History	62000.00
32343	El Said		History	60000.00
15151	Mozart		Music	40000.00
*/