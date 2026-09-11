--Problem:Average Selling Price
--Link: https://leetcode.com/problems/average-selling-price/?envType=study-plan-v2&envId=top-sql-50

select p.Product_id,
	ifnull(round(sum(p.price*u.units)/sum(u.units),2),0)as average_price
from prices p
left join unitssold u
on p.product_id = u.product_id 
and u.purchase_date between p.start_date and p.end_date
group by p.Product_id
