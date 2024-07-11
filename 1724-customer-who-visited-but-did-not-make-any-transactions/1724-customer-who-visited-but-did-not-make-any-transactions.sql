/* Write your T-SQL query statement below */



with temp as (
select  customer_id,transaction_id from Visits V
left join Transactions T
on V.visit_id = T.visit_id
)
select customer_id, count(*) as count_no_trans  from temp where transaction_id is null group by customer_id, transaction_id
order by 1 asc