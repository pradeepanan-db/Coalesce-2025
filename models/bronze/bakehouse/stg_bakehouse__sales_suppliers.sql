with 

source as (

    select * from {{ source('bakehouse', 'sales_suppliers') }}

),

renamed as (

    select
        supplierid,
        name,
        ingredient,
        continent,
        city,
        district,
        size,
        longitude,
        latitude,
        approved

    from source

)

select * from renamed
