with source as (
  select * from {{ source('adventure_works', 'sales_store') }}
),

staged as (
  select
    cast(businessentityid as bigint)          as businessentityid,
    cast(name as string)                      as name
  from source
)

select * from staged
