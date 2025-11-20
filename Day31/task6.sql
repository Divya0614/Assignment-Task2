use college;
 create table assignments(
 assignment_id int primary key auto_increment,
 name varchar(100),
 course_name varchar(100),
 course_id int not null,
 descripion text,
 duedate date);
 

 
 select * from assignments
 