with 

source as (

    select * from {{ source('bakehouse', 'media_customer_reviews') }}

),

renamed as (

    select
        review,
        franchiseid,
        review_date,
        new_id

    from source

)

select * from renamed
