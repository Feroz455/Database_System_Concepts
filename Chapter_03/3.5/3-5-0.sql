/*
page 79


*/

select course_id 
from section 
where semester = 'Fall' and year = 2017;
/*
CS-101
CS-347
PHY-101

*/
select course_id 
from section 
where semester = 'Spring' and year = 2018;
/*
CS-101
CS-315
CS-319
CS-319
FIN-201
HIS-351
MU-199
*/
select * from section