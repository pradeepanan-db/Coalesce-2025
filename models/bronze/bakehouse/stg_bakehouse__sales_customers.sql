with 

source as (

    select * from {{ source('bakehouse', 'sales_customers') }}

),

renamed as (

    select
        customerid,
        first_name,
        last_name,
        email_address,
        phone_number,
        address,
        city,
        state,
        country,
        continent,
        postal_zip_code,
        gender

    from source

)

select * from renamed
