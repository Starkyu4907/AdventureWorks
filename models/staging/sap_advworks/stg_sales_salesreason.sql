with source as (
  select * from {{ source('adventure_works', 'sales_salesreason') }}
),

staged as (
  select
    cast(salesreasonid as bigint)             as salesreasonid,
    cast(name as string)                      as name,
    cast(reasontype as string)                as reasontype,
    cast(modifieddate as timestamp)           as modifieddate
  from source
)

select * from staged;
