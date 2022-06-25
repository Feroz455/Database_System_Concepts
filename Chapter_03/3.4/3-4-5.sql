/*
Page 78
Where clause Predicates
*/

select name,salary
from instructor
where salary between 90000 and 100000
order by salary;

/*
Wu	90000.00
Einstein	95000.00
Brandt	92000.00
*/

select name,salary
from instructor
where salary not between 90000 and 100000
order by salary;

/*
Mozart		40000.00
El Said		60000.00
Califieri	62000.00
Srinivasan	65000.00
Smith		66000.00
Crick		72000.00
Katz		75000.00
Kim			80000.00
Singh		80000.00
Gold		87000.00
*/


select instructor.*
from instructor, teaches
where instructor.ID = teaches.ID and dept_name = 'Biology';

/*
76766	Crick	Biology	72000.00
76766	Crick	Biology	72000.00
*/


--sql server dosen't support this
select name, course_id
from instructor, teaches
where (instructor.ID, dept_name) = (teaches.ID, 'Biology');

/*
name	course_id
Crick	BIO-101
Crick	BIO-301
*/