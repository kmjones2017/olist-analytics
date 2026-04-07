with source as (

    select * from {{ source('olist', 'customers') }}

),

transformed as (

    select 
        
        trim(customer_id) as customer_id,
        trim(customer_unique_id) as customer_unique_id,
        cast(customer_zip_code_prefix as varchar) as customer_zip_code_prefix,
        lower(trim(customer_city)) as customer_city,
        upper(trim(customer_state)) as customer_state

    from source 

)

select * from transformed