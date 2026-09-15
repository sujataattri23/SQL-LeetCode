-Problem: Classes With at Least 5 Students
- Link: https://leetcode.com/problems/classes-with-at-least-5-students/?envType=study-plan-v2&envId=top-sql-50

select class 
from Courses
group by class
having count(student) >=5
