-- Problem: Monthly Transactions I
-- Link: https://leetcode.com/problems/monthly-transactions-i/?envType=study-plan-v2&envId=top-sql-50

select date_format(trans_date, '%Y-%m') as month,
	country,
	count(id) as trans_count,
	count(case when state = 'approved' then 1 end) as approved_count,
	sum(amount) as trans_total_amount, 
	sum(case when state = 'approved' then amount else 0 end)approved_total_amount
from Transactions
group by month, country
