use OrphanageDB
go
-- 1) Show a list of  all students who enrolled in  the orphanage in the 2o century and their age at the time when they entered the sem
select Age = datediff(year, s.DateOfBirth, s.DateEnrolled), *
from student s
where year(s.DateEnrolled) between 1900 and 1999
-- 2) Show a list of Students who are not from the tri-state area(the tri state area will include brooklyn and new jersey), and their age when they entered the orphanage
select Age = datediff(year, s.DateOfBirth, s.DateEnrolled), *
from student s
where s.State in ('New York', 'New Jersey')
-- 3) Show me the Avg how  long students tend to stay in the orphanage and an average of boys and girls
select s.gender, averagestay = concat(avg(datediff(day, s.DateEnrolled, s.DateLeft)), ' days')
from student s
where s.dateleft is not null
group by s.gender
-- 4) Write me a format Id for the students, it should look like this ex: (Smith, Peter-07/06/2001).
select FormattedId = concat(s.LastName, ', ', s.FirstName, ' - ', s.DateOfBirth)
from student s
