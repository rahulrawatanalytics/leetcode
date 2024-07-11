/* Write your T-SQL query statement below */
select 
unique_id,
name     
from 
Employees  Emp left join EmployeeUNI EmpUNI
on Emp.id = EmpUNI.id