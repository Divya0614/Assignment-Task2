-- use day4db;
select 
concat(
upper(left(trim('  hello world  '),1)),
lower(substring(trim('  hEllo world  '),2))
) as foramt_text