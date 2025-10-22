select
	l_orderkey as order_key,
	l_quantity as quantity,
	l_extendedprice as extended_price,
	l_discount as discount_percentage,
	l_tax as tax_rate,
    {{  discounted_amount('line_item.extended_price', 'line_item'.discount_percentage)  }} as item_discount_amt
from
    {{ ref('stg_tpch_line_items') }}