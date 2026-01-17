with source as (
  select * from {{ source('adventure_works', 'sales_creditcard') }}
),

staged as (
  select
    cast(creditcardid as bigint)              as creditcardid,
    cast(cardtype as string)                  as cardtype
  from source
)

select * from staged
