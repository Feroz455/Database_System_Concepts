/*
Page 81
The intersect Operation
*/
--Intersect
(select course_id
from section
where semester = 'Fall' and year = 2017)
intersect
(select course_Id
from section 
where semester = 'Spring' and year = 2018)
/*
CS-101
*/

(select course_id
from section
where semester = 'Fall' and year = 2017)
intersect all
(select course_Id
from section 
where semester = 'Spring' and year = 2018)