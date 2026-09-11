-- Problem: Not Boring Movies
-- Link: https://leetcode.com/problems/not-boring-movies/?envType=study-plan-v2&envId=top-sql-50

select 
    id,
    movie,
    description,
    rating
from cinema
where id % 2 != 0
and description != 'boring'
order by rating desc
