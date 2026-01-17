with source as (
  select * from {{ source('adventure_works', 'sales_salesorderheadersalesreason') }}
),

staged as (
  select
    cast(salesorderid as bigint)              as salesorderid,
    cast(salesreasonid as bigint)             as salesreasonid,
    cast(modifieddate as timestamp)           as modifieddate
  from source
)

select * from staged;
