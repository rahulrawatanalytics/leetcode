# Write your MySQL query statement below

select P.Project_ID, round(avg(experience_years ),2) as average_years   from Project P left join Employee E 
on P.employee_id = E.Employee_id
group by p.Project_ID