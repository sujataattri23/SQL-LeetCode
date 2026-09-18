- Problem: Primary Department for Each Employee
- Link:  https://leetcode.com/problems/primary-department-for-each-employee/description/?envType=study-plan-v2&envId=top-sql-50

select distinct employee_id,
                department_id
from employee 
where primary_flag = 'Y'
group by employee_id
union
select distinct employee_id,
                department_id
from employee 
group by employee_id 
having count(employee_id ) = 1
