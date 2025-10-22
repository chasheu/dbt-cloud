select
    *,
from
    {{ ref('int_tpch_line_item_aggr')}}
    