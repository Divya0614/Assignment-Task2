use day3db;
select department_id, count(*) as total_employees
from employees_4
group by department_id
having count(*) < 5;