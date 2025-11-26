-- use day4db;
-- select timestampdiff(year,'2004-01-06',curdate()) as diff_years;
-- select timestampdiff(month,'2004-01-06',curdate()) as diff_month
select datediff(curdate(),'2004-01-06') as diff_days