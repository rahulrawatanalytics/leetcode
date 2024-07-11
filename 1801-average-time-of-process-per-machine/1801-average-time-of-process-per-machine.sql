/* Write your T-SQL query statement below */
with cte_1 as (
    select machine_id ,process_id ,activity_type ,timestamp  from Activity
    where activity_type ='start'
)
, cte_2 as (
    select machine_id ,process_id ,activity_type ,timestamp  from Activity
    where activity_type ='end'
)

select cte_2.machine_id as machine_id ,round(avg(cte_2.timestamp - cte_1.timestamp) ,3) as processing_time  from cte_1 join cte_2 on cte_1.machine_id=cte_2.machine_id
and cte_1.process_id=cte_2.process_id
group by cte_2.machine_id