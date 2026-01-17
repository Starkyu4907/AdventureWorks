with source as (
  select * from {{ source('adventure_works', 'sales_store') }}
),

staged as (
  select
    cast(businessentityid as bigint)          as businessentityid,
    cast(name as string)                      as name,
    cast(salespersonid as bigint)             as salespersonid,
    cast(demographics as string)              as demographics,
    cast(rowguid as string)                   as rowguid,
    cast(modifieddate as timestamp)           as modifieddate
  from source
)

select * from staged;
