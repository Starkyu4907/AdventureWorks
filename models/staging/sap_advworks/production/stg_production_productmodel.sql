with source as (
  select * from {{ source('adventure_works', 'production_productmodel') }}
),

staged as (
  select
    cast(productmodelid as bigint)            as productmodelid,
    cast(name as string)                      as name
  from source
)

select * from staged
