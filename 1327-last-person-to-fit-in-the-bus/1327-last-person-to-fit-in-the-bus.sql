# Write your MySQL query statement below
with cte as
( select person_id, person_name , sum(weight ) over( order by turn asc) as running_total_weight from Queue)

select person_name from cte where running_total_weight =
(select max(running_total_weight) from cte where running_total_weight<=1000)
