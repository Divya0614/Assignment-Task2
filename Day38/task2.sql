use day4db;

create table marks (
mark_id int primary key,
student_id int,
subject varchar(100),
score int);

INSERT INTO marks VALUES
(1, 1, 'Maths', 90),
(2, 1, 'Science', 85),
(3, 2, 'Maths', 70),
(4, 3, 'Science', 89),
(5, 5, 'English', 91);

create view da_student_scores as
select s.student_name, m.subject, m.score
from student s
join marks m on s.student_id = m.student_id;

select * from da_student_scores
where score > 80;