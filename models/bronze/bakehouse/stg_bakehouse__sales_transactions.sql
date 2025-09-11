with 

source as (

    select * from {{ source('bakehouse', 'sales_transactions') }}

),

renamed as (

    select
        transactionid,
        customerid,
        franchiseid,
        datetime,
        product,
        quantity,
        unitprice,
        totalprice,
        paymentmethod,
        cardnumber

    from source

)

select * from renamed
