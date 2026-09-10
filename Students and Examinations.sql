-- problem: Students and Examinations
-- link: https://leetcode.com/problems/students-and-examinations/?envType=study-plan-v2&envId=top-sql-50

select st.student_id,
st.student_name,
sub.subject_name,
count(e.subject_name) as attended_exams
from students st
cross join subjects sub
left join examinations e
on st.student_id = e.student_id
and sub.subject_name = e.subject_name 
