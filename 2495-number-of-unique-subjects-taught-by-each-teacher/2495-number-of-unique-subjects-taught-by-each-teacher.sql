/* Write your T-SQL query statement below */


with teacher_table as (
   select teacher_id,count(distinct subject_id) as cnt
from Teacher
group by teacher_id 
)
select teacher_id,cnt from teacher_table;