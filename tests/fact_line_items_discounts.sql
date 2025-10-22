select
    *
from
    {{ref('fct_orders')}}
where
    item_discount_amt > 0