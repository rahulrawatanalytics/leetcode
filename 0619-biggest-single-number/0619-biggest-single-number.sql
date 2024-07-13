# Write your MySQL query statement below
with cte as
 (
    select num, count(*) as cnt from MyNumbers group by num having count(*)=1
    )

select max(num) as num from cte