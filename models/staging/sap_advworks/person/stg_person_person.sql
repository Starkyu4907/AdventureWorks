with source as (
  select * from {{ source('adventure_works', 'person_person') }}
),

staged as (
  select
    cast(businessentityid as bigint)          as businessentityid,
    cast(persontype as string)                as persontype,
    cast(firstname as string)                 as firstname,
    cast(lastname as string)                  as lastname
  from source
)

select * from staged
