with payment as (
select 
    id          as payment_id
    , orderid   as order_id
    , {{ cents_to_dollars('amount','4') }} as amount
    , status
    , paymentmethod as payment_method
from {{ source('stripe', 'payment') }}
)

select * from payment
