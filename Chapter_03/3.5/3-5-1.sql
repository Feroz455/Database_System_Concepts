/*
Page 80
The union operation
*/
--union
(select course_id
from section
where semester = 'Fall' and year = 2017)
union 
(select course_Id
from section 
where semester = 'Spring' and year = 2018)
/*
CS-101
CS-315
CS-319
CS-347
FIN-201
HIS-351
MU-199
PHY-101
*/

(select course_id
from section
where semester = 'Fall' and year = 2017)
union all
(select course_Id
from section 
where semester = 'Spring' and year = 2018)
/*
CS-101
CS-347
PHY-101
CS-101
CS-315
CS-319
CS-319
FIN-201
HIS-351
MU-199
*/

select * from section
/*
BIO-101	1	Summer	2017	Painter	514	B
BIO-301	1	Summer	2018	Painter	514	A
CS-101	1	Fall	2017	Packard	101	H
CS-101	1	Spring	2018	Packard	101	F
CS-190	1	Spring	2017	Taylor	3128	E
CS-190	2	Spring	2017	Taylor	3128	A
CS-315	1	Spring	2018	Watson	120	D
CS-319	1	Spring	2018	Watson	100	B
CS-319	2	Spring	2018	Taylor	3128	C
CS-347	1	Fall	2017	Taylor	3128	A
EE-181	1	Spring	2017	Taylor	3128	C
FIN-201	1	Spring	2018	Packard	101	B
HIS-351	1	Spring	2018	Painter	514	C
MU-199	1	Spring	2018	Packard	101	D
PHY-101	1	Fall	2017	Watson,	100	A
*/