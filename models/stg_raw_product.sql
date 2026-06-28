with source as (

    select *
    from {{ source('raw', 'product') }}

),

renamed as (

    select
        products_id,
        purchSE_PRICE
    from source

)

select * from renamed