use college;
 create table assignments(
 assignment_id int primary key auto_increment,
 name varchar(100),
 course_name varchar(100),
 course_id int not null,
 descripion text,
 duedate date);
 
 insert into assignments(name, course_name, course_id, descripion, duedate)
 values('Divya','IT', 1, 'Information technology', '2025-07-03'),
 ('Kaviya' , 'CSE',2, 'Computer science and engineering', '2025-07-02');
 
 select * from assignments
 