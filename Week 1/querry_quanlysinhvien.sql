use quanlysinhvien;

select*from student
where StudentName like 'h%';

select StartDate, ClassName 
from class
where month(StartDate) = 12;

select Credit, Subname
from subject
where Credit between 5 and 8;

SET SQL_SAFE_UPDATES = 0;
update student 
set ClassID = 2
where StudentName = 'Hung';
SET SQL_SAFE_UPDATES = 1;

select s.StudentName, sub.SubName, m.Mark
from student s
inner join mark m on s.StudentID = m.StudentID
inner join subject sub on sub.SubID = m.SubID
order by m.Mark desc, s.StudentName asc;
