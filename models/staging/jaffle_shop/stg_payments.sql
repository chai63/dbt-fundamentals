with payment as (
select 
    id          as payment_id
    , orderid   as order_id
    , amount
from "RAW"."STRIPE"."PAYMENT"
)

select * from payment
