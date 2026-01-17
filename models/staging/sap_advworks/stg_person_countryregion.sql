with source as (
  select * from {{ source('adventure_works', 'person_countryregion') }}
),

staged as (
  select
    cast(countryregioncode as string)         as countryregioncode,
    cast(name as string)                      as name,
    cast(modifieddate as timestamp)           as modifieddate
  from source
)

select * from staged;
