- Project: Combine two tables
- Link: https://leetcode.com/problems/combine-two-tables/submissions/2145574211/?envType=problem-list-v2&envId=wehxh2aj

select p.firstName, 
        p.lastName, 
        a.city, 
        a.state
from person p
left join address a
on p.personId = a.personId 
