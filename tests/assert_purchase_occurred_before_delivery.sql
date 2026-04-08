select *
from {{ ref('stg_olist__orders') }}
where order_delivered_customer_date < order_purchase_timestamp