# Write your MySQL query statement below
select 
contest_id, round(((count(distinct user_id)/( select count(distinct user_id) from users))*100),2) as percentage 
 from 
Register R group by contest_id
order  by

2 desc,
1 asc