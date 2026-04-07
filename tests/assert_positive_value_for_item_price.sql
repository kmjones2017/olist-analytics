select *
from {{ ref('stg_olist__order_items') }}
where item_price < 0