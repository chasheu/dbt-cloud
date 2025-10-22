select
    o.orderkey as order_key,
    o.custkey as customer_key,
    o.orderstatus as order_status,
    o.totalprice as total_price,
    o.order_date as order_date,
    c.c_name as Customer_Name
from 
    {{ ref('stg_tpch_orders') }} as o
left join 
    {{ ref('stg_tpch_customers') }} as c
        on o.o_custkey = c.c_custkey