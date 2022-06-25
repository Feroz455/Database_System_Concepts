/*
Page 66
*/

select name, instructor.dept_name, building from instructor, department
where instructor.dept_name = department.dept_name
/*
Srinivasan	Comp.Sci.	Taylor
Smith		Biology		Watson
Wu			Finance		Painter
Mozart		Music		Packard
Einstein	Physics		Watson
El Said		History		Painter
Gold		Physics		Watson
Katz		Comp.Sci.	Taylor
Califieri	History		Painter
Singh		Finance		Painter
Crick		Biology		Watson
Brandt		Comp.Sci.	Taylor
Kim			Elec.Eng.	Taylor
*/
select * from instructor
select * from teaches

select name, course_id
from instructor, teaches
where instructor.id = teaches.ID;
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

select name, course_id, dept_name
from instructor, teaches
where (instructor.id = teaches.ID) and (instructor.dept_name = 'Comp.Sci.');
/*
Srinivasan	CS-101	Comp.Sci.
Srinivasan	CS-315	Comp.Sci.
Srinivasan	CS-347	Comp.Sci.
Katz	CS-101	Comp.Sci.
Katz	CS-319	Comp.Sci.
Brandt	CS-190	Comp.Sci.
Brandt	CS-190	Comp.Sci.
Brandt	CS-319	Comp.Sci.
*/
