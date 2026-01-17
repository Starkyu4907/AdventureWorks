with source as (
  select * from {{ source('adventure_works', 'person_stateprovince') }}
  ),

staged as (
  select
    cast(stateprovinceid as bigint)           as stateprovinceid,
    cast(countryregioncode as string)         as countryregioncode,
    cast(name as string)                      as name
  from source
)

select * from staged
