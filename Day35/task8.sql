-- use day4db;-- 
alter table employees
add column username varchar(100);

update employees
set username = lower(
concat(substring(name,3,3),lpad(id,3,'0')))
where id >0 ;

select * from employees