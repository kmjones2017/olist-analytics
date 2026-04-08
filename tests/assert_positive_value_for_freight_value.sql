select *
from {{ ref('stg_olist__order_items') }}
where freight_value < 0