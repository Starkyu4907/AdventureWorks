with source as (
  select * from {{ source('adventure_works', 'production_productmodel') }}
),

staged as (
  select
    cast(productmodelid as bigint)            as productmodelid,
    cast(name as string)                      as name,
    cast(catalogdescription as string)        as catalogdescription,
    cast(instructions as string)              as instructions,
    cast(rowguid as string)                   as rowguid,
    cast(modifieddate as timestamp)           as modifieddate
  from source
)

select * from staged;
