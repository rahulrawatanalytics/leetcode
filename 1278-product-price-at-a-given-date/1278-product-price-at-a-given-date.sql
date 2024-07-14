# Write your MySQL query statement below
with cte as (select product_id , new_price  as price,row_number()  over( partition by product_id order by change_date desc) as r_num
from Products  
where change_date <= '2019-08-16'),

cte_1 as (

    select product_id , 10 as price    from Products
    where product_id not in (select product_id from cte)
)

select product_id,price from 
cte where r_num=1
union 
select product_id,price
from cte_1

