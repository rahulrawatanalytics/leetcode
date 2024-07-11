/* Write your T-SQL query statement below */
 with manager_reports as ( select managerId , Count(*) as count_direct_reports from Employee where managerId is not null group by managerID having count(*)>4 ) 
 
 select name from Employee where id in (select managerId from manager_reports)