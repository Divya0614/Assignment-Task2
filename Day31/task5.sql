use college;

CREATE TABLE students (
id INT PRIMARY KEY auto_increment,
name varchar(10)
);

CREATE table Courses (
course_id int primary key auto_increment,
course_name varchar(100)
);

CREATE table enrollment (
id int,
course_id int,
foreign key(id) references students(id),
foreign key(course_id) references Courses(course_id)
);
INSERT INTO students(name)
values
('Divya'),
('kaviya'),
('Iniya');

insert into Courses (course_name) 
values
('CSE'),
('IT'),
('FOODTECH');
insert into enrollment (id, course_id) values
(1,1),
(2,2),
(3,3);

select
students.name,
Courses.course_name
from students
JOIN enrollment
ON students.id = enrollment.id
JOIN Courses
on Courses.course_id = enrollment.course_id;