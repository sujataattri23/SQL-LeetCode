-Project: second Highest Salary
-Link: https://leetcode.com/problems/second-highest-salary/?envType=problem-list-v2&envId=wehxh2aj

SELECT MAX(salary) AS SecondHighestSalary
 from ( 
  select
    salary,
    DENSE_RANK() OVER (ORDER BY salary DESC) as rnk
from employee) ranked
 where rnk = 2
