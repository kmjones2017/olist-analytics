with source as (
    select * from {{ source('olist', 'orders') }}
),

transformed as (
    select 

        trim(order_id) as order_id,
        trim(customer_id) as customer_id,
        lower(trim(order_status)) as order_status,

        cast(order_purchase_timestamp as timestamp_ntz) as order_purchase_timestamp,
        cast(order_approved_at as timestamp_ntz) as order_approved_at,
        cast(order_delivered_carrier_date as timestamp_ntz) as order_delivered_carrier_date,
        cast(order_delivered_customer_date as timestamp_ntz) as order_delivered_customer_date,
        cast(order_estimated_delivery_date as timestamp_ntz) as order_estimated_delivery_date

    from source 
)

select * from transformed