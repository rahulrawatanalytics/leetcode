/* Write your T-SQL query statement below */


with cte as
(
    select *, lag(temperature) over(order by recordDate       ) as prev_temp, lag(recordDate        ) over(order by recordDate ) as prev_date from Weather
)

select id from cte where  prev_temp<temperature and datediff(day,prev_date,recordDate)=1