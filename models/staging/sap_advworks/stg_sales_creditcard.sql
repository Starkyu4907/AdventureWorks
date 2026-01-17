with source as (
  select * from {{ source('adventure_works', 'sales_creditcard') }}
),

staged as (
  select
    cast(creditcardid as bigint)              as creditcardid,
    cast(cardtype as string)                  as cardtype,
    cast(cardnumber as string)                as cardnumber,
    cast(expmonth as int)                     as expmonth,
    cast(expyear as int)                      as expyear,
    cast(modifieddate as timestamp)           as modifieddate
  from source
)

select * from staged;
