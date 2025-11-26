use day4db;

select year(hire_date) as hire_year, month(hire_date) as hire_month,
date_format(min(hire_date), '%m %y') as month_name,
count(*) as total_hires
from employees

where hire_date >= date_sub(curdate(),interval 24 month)
group by year(hire_date), month(hire_date)
order by hire_year desc, hire_month desc;
select * from employees