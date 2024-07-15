# Write your MySQL query statement below


with cte as (
select 
delivery_id ,
row_number() over(partition by customer_id order by order_date asc) as order_number,

case when order_date=customer_pref_delivery_date then 1 else 0 end as immediate
from Delivery 
)

select 
round( (sum(immediate)/(count(delivery_id) ))*100, 2 )  as immediate_percentage 
from cte where order_number=1