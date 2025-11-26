-- use day4db;
create table employee_contact_clean(
id int primary key,
clean_email varchar(100),
clean_phone varchar(100)); 

insert into employee_contact_clean (id, clean_email, clean_phone)
select
id, lower(trim(email)) as trimmed_email,
regexp_replace(phone, '[^0-9]','') as clean_phone from employees;
