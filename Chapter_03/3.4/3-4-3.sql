/*
Page 77
3.4.3 Attribute Specification in Select Clause 
*/

select instructor.* 
from instructor, teaches
where instructor.ID = teaches.ID;

/*
10101	Srinivasan	Comp.Sci.	65000.00
10101	Srinivasan	Comp.Sci.	65000.00
10101	Srinivasan	Comp.Sci.	65000.00
12121	Wu			Finance		90000.00
15151	Mozart		Music		40000.00
22222	Einstein	Physics		95000.00
32343	El Said		History		60000.00
45565	Katz		Comp.Sci.	75000.00
45565	Katz		Comp.Sci.	75000.00
76766	Crick		Biology		72000.00
76766	Crick		Biology		72000.00
83821	Brandt		Comp.Sci.	92000.00
83821	Brandt		Comp.Sci.	92000.00
83821	Brandt		Comp.Sci.	92000.00
98345	Kim			Elec.Eng.	80000.00
*/