with orders as (

    select * from {{ ref('stg_olist__orders') }}

),

order_items as (

    select * from {{ ref('stg_olist__order_items') }}

),

int_order_items_enriched as (

    select 

        orders.order_id,
        order_items.order_item_id,
        order_items.product_id,
        orders.customer_id,
        order_items.seller_id,
        orders.order_status,
        order_items.item_price,
        order_items.freight_value,
        orders.order_purchase_timestamp,
        orders.order_estimated_delivery_date,
        orders.order_approved_at,
        order_items.seller_shipping_deadline,
        orders.order_delivered_carrier_date,
        orders.order_delivered_customer_date

    from order_items
    
    left join orders on order_items.order_id = orders.order_id
    where orders.order_status not in ('canceled', 'unavailable')

)

select * from int_order_items_enriched
