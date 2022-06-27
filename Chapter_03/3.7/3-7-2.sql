/*
Page 86

Aggregation with Grouping 
*/

select dept_name, avg(salary) as avg_salary
from instructor
group by dept_name
/*
Biology	69000.000000
Comp.Sci.	77333.333333
Elec.Eng.	80000.000000
Finance	85000.000000
History	61000.000000
Music	40000.000000
Physics	91000.000000
*/


select avg(salary)
from instructor
/*
74153.846153
*/

select dept_name, count(distinct DI) as 'inst_count'
from instructor natural join teaches
where semester = 'Spring' and year = 2018
group by dept_name;

/*
dept_name	inst_count
Comp. Sci.	3
Finance		1
History		1
Music		1
*/