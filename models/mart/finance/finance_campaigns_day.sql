select 
date_date
, nb_orders
, revenue
, avg_basket
, margin
, operational_margin
,(operational_margin - ads_cost) as ads_margin
from {{ref("int_campaigns_day")}}
join {{ref("finance_days")}} 
using(date_date)