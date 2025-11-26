select datediff(now(), hire_date) as days_worked
from employees
where id = 1;