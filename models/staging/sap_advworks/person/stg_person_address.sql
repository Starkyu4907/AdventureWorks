with source as (
  select * from {{ source('adventure_works', 'person_address') }}
),

staged as (
  select
    cast(addressid as bigint)                 as addressid,
    cast(city as string)                      as city,
    cast(stateprovinceid as bigint)           as stateprovinceid
  from source
)

select * from staged
