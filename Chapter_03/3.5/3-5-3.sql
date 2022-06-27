/*
page 82

3.5.3
The except operation 

*/
(select course_id
from section
where semester = 'Fall' and year = 2017)
except
(select course_Id
from section 
where semester = 'Spring' and year = 2018)
/*
CS-347
PHY-101
*/