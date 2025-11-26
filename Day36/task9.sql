-- use day4db;
-- select substring_index('Divya Marimuthu',' ',1) as first_name
-- select substring_index('Divya Marimuthu',' ' ,-1) as last_name
select concat(
upper(left(substring_index('Divya Marimuthu',' ',1),1)),
upper(left(substring_index('Divya Marimuthu',' ',-1),1))
)as initials;