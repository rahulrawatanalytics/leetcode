with cte as (select  reports_to , count(distinct employee_id) as reports_count  , avg(age) as age
from Employees group by reports_to )

select 
e.employee_id as employee_id , 

e.name as name, 

c.reports_count  as reports_count,

round( (c.age),0) as average_age  
from Employees  e inner join cte c
on c.reports_to = e.employee_id
order by 1