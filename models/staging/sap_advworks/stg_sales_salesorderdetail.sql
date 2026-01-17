with source as (
  select * from {{ source('adventure_works', 'sales_salesorderdetail') }}
),

staged as (
  select
    cast(salesorderid as bigint)              as salesorderid,
    cast(salesorderdetailid as bigint)        as salesorderdetailid,
    cast(carriertrackingnumber as string)     as carriertrackingnumber,
    cast(orderqty as int)                     as orderqty,
    cast(productid as bigint)                 as productid,
    cast(specialofferid as bigint)            as specialofferid,
    cast(unitprice as double)                 as unitprice,
    cast(unitpricediscount as double)         as unitpricediscount,
    cast(rowguid as string)                   as rowguid,
    cast(modifieddate as timestamp)           as modifieddate
  from source
)

select * from staged;
