with customers as (

    select * from {{ ref('stg_olist__customers') }}

),

final as (

    select

        customer_id,
        customer_unique_id,
        customer_zip_code_prefix,
        customer_city,
        customer_state,
        {{ region_from_state('customer_state') }} as customer_region

    from customers

)

select * from final