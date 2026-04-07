select *
from {{ ref('stg_olist__order_items') }}
where order_status = 'delivered'
  and order_delivered_customer_date is null