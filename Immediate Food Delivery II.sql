--Problem: Immediate Food Delivery II
-- Link: https://leetcode.com/problems/immediate-food-delivery-ii/?envType=study-plan-v2&envId=top-sql-50

select
    round(sum(case when d1.customer_pref_delivery_date = d1.order_date then 1 else 0 end) * 100.0/ count(*),2 ) as immediate_percentage 
from delivery d1
join(
    select
        delivery_id,
        customer_id,
        min(order_date) as min_order_date,
        min(customer_pref_delivery_date) as min_del_date
from delivery 
group by customer_id) d2
    on d1.customer_id = d2.customer_id
    and d1.order_date  = d2.min_order_date
