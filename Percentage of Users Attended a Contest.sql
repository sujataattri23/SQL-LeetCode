--Problem: Percentage of Users Attended a Contest
--Link: https://leetcode.com/problems/percentage-of-users-attended-a-contest/?envType=study-plan-v2&envId=top-sql-50

select r.contest_id,
	round(count(r.user_id) * 100.0 / (select count(*) from users), 2) as percentage 
from Register r
group by r.contest_id
order by percentage desc, r.contest_id asc 
