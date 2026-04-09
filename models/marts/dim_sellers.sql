with sellers as (

    select * from {{ ref('stg_olist__sellers') }}

),

final as (

    select 

        seller_id,
        seller_zip_code_prefix,
        seller_city,
        seller_state,
        {{ region_from_state('seller_state') }} as seller_region

    from sellers 

)

select * from final