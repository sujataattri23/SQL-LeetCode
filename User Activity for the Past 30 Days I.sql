- Problem:  User Activity for the Past 30 Days I
- Link: https://leetcode.com/problems/user-activity-for-the-past-30-days-i/?envType=study-plan-v2&envId=top-sql-50

select  activity_date as day,
        count( distinct user_id) as active_users 
from activity
where datediff('2019-07-27', activity_date) between 0 and 29
group by activity_date
