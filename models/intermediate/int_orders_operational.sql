with join_ship as (
select
date_date,
orders_id,
nb_orders,
revenue
, (revenue/nb_orders) as avg_basket
, purchase_cost
, margin_per_order
,shipping_fee,
 cast(ship_cost as float64) as ship_cost
,logcost
from {{ref("int_orders_margin")}}
join {{ref("stg_raw__ship")}}
using(orders_id)
)

select *
, (margin_per_order+shipping_fee - (logcost+ship_cost)) as operational_margin
from join_ship