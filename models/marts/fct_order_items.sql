with int_order_items_enriched as (

    select * from {{ ref('int_order_items_enriched') }}

),

fct_order_items as (

    select 

        order_id,
        order_item_id,
        product_id,
        customer_id,
        seller_id,
        order_status,
        item_price,
        freight_value,
        order_purchase_timestamp,
        order_estimated_delivery_date,
        order_approved_at,
        seller_shipping_deadline,
        order_delivered_carrier_date,
        order_delivered_customer_date,

        item_price + coalesce(freight_value, 0) as total_value,
        datediff('day', order_purchase_timestamp, order_delivered_customer_date) as fulfillment_speed,
        datediff('hour', order_purchase_timestamp, order_approved_at) as approval_delay

    from int_order_items_enriched

)

select * from fct_order_items