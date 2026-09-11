--Problem: Project Employees I
-- Link: https://leetcode.com/problems/project-employees-i/?envType=study-plan-v2&envId=top-sql-50

select p.project_id,
	round(sum(e.experience_years)/count(p.project_id),2) as average_years
from project p
left join employee e
on p.employee_id  = e.employee_id 
group by p.project_id
