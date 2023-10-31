select 
date_date,
orders_id,
sum(revenue) as revenue
, sum (purchase_cost) as purchase_cost
, sum(margin) as margin_per_order
from {{ref('int_sales_margin')}}
group by date_date, orders_id