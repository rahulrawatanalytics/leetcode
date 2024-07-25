# Write your MySQL query statement below

with cte as 
(
select account_id  ,
        case when income< 20000 then 'Low Salary'
         when (income>= 20000 and income <=50000 ) then 'Average Salary'
        else 'High Salary'
        end as category       
from accounts
),
cte_1 as (
    select 'Low Salary' as category
    union 
    select 'Average Salary' as category
    union
    select'High Salary' as category
)
select  cte_1.category as category, count(account_id ) as accounts_count  from cte_1 left join cte 
on cte.category = cte_1.category
group by cte_1.category 
