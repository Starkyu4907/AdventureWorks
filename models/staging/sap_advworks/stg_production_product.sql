with source as (
  select * from {{ source('adventure_works', 'production_product') }}
),

staged as (
  select
    cast(productid as bigint)                 as productid,
    cast(name as string)                      as name,
    cast(productnumber as string)             as productnumber,
    cast(makeflag as boolean)                 as makeflag,
    cast(color as string)                     as color,
    cast(listprice as double)                 as listprice,
    cast(productmodelid as bigint)            as productmodelid
  from source
)

select * from staged
