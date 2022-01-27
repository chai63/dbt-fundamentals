with fact_orders as (
    select o.order_id, o.customer_id,  amount
from {{ ref('stg_orders') }} o
JOIN {{ ref('stg_payments') }} p on o.order_id = p.order_id
)

select * from fact_orders