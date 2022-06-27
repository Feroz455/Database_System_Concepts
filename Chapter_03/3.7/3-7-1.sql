/*
Page 84

3.7  Aggregate Functions
3.7.1 Basic Aggregation

*/
select avg(salary) As 'Average Salary'
from instructor
where dept_name = 'Comp.Sci.'

select * from teaches



select count (distinct ID) as 'Number of ID'
from teaches
where semester ='Spring' and year = 2018
/*
6
*/

select count (*)
from course
/*
13
*/