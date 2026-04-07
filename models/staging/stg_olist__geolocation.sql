with source as (
    select * from {{ source('olist', 'geolocation') }}
),

transformed as (
    select

        cast(geolocation_zip_code_prefix as varchar) as zip_code_prefix,
        cast(geolocation_lat as float) as latitude,
        cast(geolocation_lng as float) as longitude,
        
        trim(geolocation_city) as city,
        trim(geolocation_state) as state 
        
    from source 
)

select * from transformed