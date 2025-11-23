use day3db;

select department_id,
sum(salary) as total_salary,
avg(salary) as average_salary,
min(salary) as min_salary,
max(salary) as max_salary
from employees_4
group by department_id;