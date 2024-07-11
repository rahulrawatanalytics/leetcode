/* Write your T-SQL query statement below */
select w2.Id as id 
from Weather w1
join Weather w2
on w1.recordDate = dateadd(day,-1, w2.recordDate)
where w2.temperature>w1.temperature