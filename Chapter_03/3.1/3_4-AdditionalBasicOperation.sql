/*
Page 74

*/

select name as Instructor_name,course_id as [Course ID]
from instructor, teaches
where instructor.ID = teaches.ID;
/*
Srinivasan	CS-101
Srinivasan	CS-315
Srinivasan	CS-347
Wu			FIN-201
Mozart		MU-199
Einstein	PHY-101
El Said		HIS-351
Katz		CS-101
Katz		CS-319
Crick		BIO-101
Crick		BIO-301
Brandt		CS-190
Brandt		CS-190
Brandt		CS-319
Kim			EE-181
*/


select T.name, S.course_id
from instructor as T, teaches as S
where T.ID = S.ID;
/*
Srinivasan	CS-101
Srinivasan	CS-315
Srinivasan	CS-347
Wu			FIN-201
Mozart		MU-199
Einstein	PHY-101
El Said		HIS-351
Katz		CS-101
Katz		CS-319
Crick		BIO-101
Crick		BIO-301
Brandt		CS-190
Brandt		CS-190
Brandt		CS-319
Kim			EE-181
*/



select distinct T.name , T.dept_name, T.salary
from instructor as T, instructor as S
where T.salary >S.salary and S.dept_name = 'Biology';
/*
Brandt		Comp.Sci.	92000.00
Crick		Biology		72000.00
Einstein	Physics		95000.00
Gold		Physics		87000.00
Katz		Comp.Sci.	75000.00
Kim			Elec.Eng.	80000.00
Singh		Finance		80000.00
Wu			Finance		90000.00
*/

select * from instructor
where instructor.dept_name = 'Biology';
/*
10211	Smith	Biology	66000.00
76766	Crick	Biology	72000.00
*/

/*
Brandt
Crick
Einstein
Gold
Katz
Kim
Singh
Wu
*/