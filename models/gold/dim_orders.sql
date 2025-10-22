select
    *,
from
    {{ ref('join_order_customer')}}
    