/* Write your T-SQL query statement below */

select name, bonus from Bonus B right join Employee E
on B.empID = E.empID where B.bonus<1000 or B.bonus is null