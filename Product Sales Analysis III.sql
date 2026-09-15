-Problem: Product Sales Analysis III
-Link: https://leetcode.com/problems/product-sales-analysis-iii/?envType=study-plan-v2&envId=top-sql-50

select product_id,
        year as first_year,
        quantity,
        price
from 
    sales s
where year = 
    (select 
        min(year) 
    from sales 
    where product_id = s.product_id)
