-- problem:  Replace Employee ID With The Unique Identifier
-- link: https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/?envType=study-plan-v2&envId=top-sql-50
select employeeUNI.unique_id,
	employees.name
from employees
left join employeeUNI on employees.id = employeeUNI.id;
