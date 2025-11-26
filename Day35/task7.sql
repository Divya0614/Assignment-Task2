-- use day4db; 
select
case
 when timestampdiff(year,hire_date,curdate()) < 1 then '<1 year'
 when timestampdiff(year,hire_date,curdate()) between 1 and 3 then '1-3 years'
 when timestampdiff(year,hire_date,curdate()) between 3 and 5 then '3-5 years'
 else '5+ years'
 end as tenure_bucket, count(*) as total_employees
 from employees
 group by tenure_bucket;