with source as (

    select * from {{ source('olist', 'order_items') }}

),

transformed as (

    select

        trim(order_id) as order_id,
        
        cast(order_item_id as integer) as order_item_id,
        
        trim(product_id) as product_id,
        trim(seller_id) as seller_id,
        
        cast(shipping_limit_date as timestamp_ntz) as seller_shipping_deadline,
        cast(price as number(10,2)) as item_price,
        cast(freight_value as number(10,2)) as freight_value

    from source 

)

select * from transformed