with source as (
  select * from {{ source('adventure_works', 'sales_customer') }}
),

staged as (
  select
    cast(customerid as bigint)                as customerid,
    cast(personid as bigint)                  as personid,
    cast(storeid as bigint)                   as storeid,
    cast(territoryid as bigint)               as territoryid,
    cast(rowguid as string)                   as rowguid,
    cast(modifieddate as timestamp)           as modifieddate
  from source
)

select * from staged;
