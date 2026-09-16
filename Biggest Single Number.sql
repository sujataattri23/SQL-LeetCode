-Problem: Biggest Single Number
- Link: https://leetcode.com/problems/biggest-single-number/?envType=study-plan-v2&envId=top-sql-50

select 
        max(num) as num
from MyNumbers 
where num IN (
    select num
    from MyNumbers 
    group by num
    Having count(num) = 1
)
