with sales_product as (
    select *
    from {{ ref('stg_raw__sales') }} as sales
    join {{ ref('stg_raw__product') }} as product
    using(products_id)
),

purchase_cost_calc as (
    select *
    , (quantity * purchase_price) as purchase_cost
    from sales_product
    )

select *
, (revenue - purchase_cost) as margin
from purchase_cost_calc