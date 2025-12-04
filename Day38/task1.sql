use day4db;
create table student(
student_id int primary key,
student_name varchar(50),
student_marks int);

INSERT INTO student VALUES
(1, 'Divya', 92),
(2, 'Arun', 76),
(3, 'Meena', 88),
(4, 'Rahul', 45),
(5, 'Priya', 95);

create view da_top_student as
select student_name,student_marks
from student
where student_marks > 80;
 select * from da_top_student;