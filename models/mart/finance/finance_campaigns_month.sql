with extract_month as (select *
, DATE_TRUNC(date_date, MONTH) as month
from {{ref("finance_campaigns_day")}}
)

select month
, sum(revenue) as revenue
, sum(operational_margin) as operational_margin
, sum(ads_margin) as ads_margin
from extract_month
group by month
order by month