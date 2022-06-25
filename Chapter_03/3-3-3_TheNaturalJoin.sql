/*
Page 71

3.3.3 The natural join

*/
select * from teaches
select * from instructor

select instructor.id, name, dept_name, salary, course_id, sec_id, semester, year from 
teaches , instructor
where  instructor.id =  teaches.ID

/*
10101	Srinivasan	Comp.Sci.	65000.00	CS-101	1	Fall	2017
10101	Srinivasan	Comp.Sci.	65000.00	CS-315	1	Spring	2018
10101	Srinivasan	Comp.Sci.	65000.00	CS-347	1	Fall	2017
12121	Wu	Finance	90000.00	FIN-201	1	Spring	2018
15151	Mozart	Music	40000.00	MU-199	1	Spring	2018
22222	Einstein	Physics	95000.00	PHY-101	1	Fall	2017
32343	El Said	History	60000.00	HIS-351	1	Spring	2018
45565	Katz	Comp.Sci.	75000.00	CS-101	1	Spring	2018
45565	Katz	Comp.Sci.	75000.00	CS-319	1	Spring	2018
76766	Crick	Biology	72000.00	BIO-101	1	Summer	2017
76766	Crick	Biology	72000.00	BIO-301	1	Summer	2018
83821	Brandt	Comp.Sci.	92000.00	CS-190	1	Spring	2017
83821	Brandt	Comp.Sci.	92000.00	CS-190	2	Spring	2017
83821	Brandt	Comp.Sci.	92000.00	CS-319	2	Spring	2018
98345	Kim	Elec.Eng.	80000.00	EE-181	1	Spring	2017
*/