--Problem: Employee Bonus
-- link: https://leetcode.com/problems/employee-bonus/?envType=study-plan-v2&envId=top-sql-50


select e.name,
	b.bonus
from employee e
left join bonus b
on e.empID = b.empID
where b.bonus < 1000
or b.bonus IS NULL
