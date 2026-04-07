{{ config(severity = 'warn') }}

select *
from {{ ref('stg_olist__orders') }}
where order_status = 'delivered'
  and order_delivered_customer_date is null