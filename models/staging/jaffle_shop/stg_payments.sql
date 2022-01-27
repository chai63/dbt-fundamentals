with payment as (
select 
    id          as payment_id
    , orderid   as order_id
    , amount
from {{ source('stripe', 'payment') }}
)

select * from payment
