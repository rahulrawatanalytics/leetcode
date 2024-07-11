/* Write your T-SQL query statement below */
with  cte_activity as (
    select activity_date,count(distinct user_id) as active_users from Activity
    where datediff (day,activity_date,'2019-07-27')<30 and activity_date<='2019-07-27' group by activity_date
)

select activity_date as day, active_users from cte_activity where active_users>0
order by 1 asc
