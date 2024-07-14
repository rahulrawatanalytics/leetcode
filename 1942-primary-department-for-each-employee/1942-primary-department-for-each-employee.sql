# Write your MySQL query statement below

select * from (select 

 case when  primary_flag ='Y' 
        then employee_id 
    when  employee_id in (select employee_id from Employee group by employee_id having count(department_id )=1 )
        then employee_id 
    end as employee_id  
, department_id 
 from  Employee  )A where A.employee_id is not null
