-- problem: Article Views I
-- Link: https://leetcode.com/problems/article-views-i/submissions/2136051293/?envType=study-plan-v2&envId=top-sql-50

select distinct author_id  as id
from views
where author_id = viewer_id 
order by author_id asc
