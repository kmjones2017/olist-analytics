with source as (

    select * from {{ source('olist', 'product_category_name_translation') }}

),

transformed as (

    select 

        lower(trim(product_category_name)) as product_category_name,
        lower(trim(product_category_name_english)) as product_category_name_english 

    from source 

)

select * from transformed