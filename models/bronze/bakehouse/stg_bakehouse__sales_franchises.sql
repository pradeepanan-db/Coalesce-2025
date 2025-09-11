with 

source as (

    select * from {{ source('bakehouse', 'sales_franchises') }}

),

renamed as (

    select
        franchiseid,
        name,
        city,
        district,
        zipcode,
        country,
        size,
        longitude,
        latitude,
        supplierid

    from source

)

select * from renamed
