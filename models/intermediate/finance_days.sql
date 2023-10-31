select
date_date
, sum(nb_orders) as nb_orders
, sum(revenue) as revenue
, sum(avg_basket) as avg_basket
, sum(margin) as margin
, sum(operational_margin) as operational_margin
from {{ref("int_orders_operational")}}
group by date_date