select 
date_date,
orders_id,
sum(revenue) as revenue
, round(sum (purchase_cost),2) as purchase_cost
, round(sum(margin),2) as margin_per_order
from {{ref('int_sales_margin')}}
group by date_date, orders_id