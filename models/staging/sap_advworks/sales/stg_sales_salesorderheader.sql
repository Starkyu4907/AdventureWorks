with source as (
  select * from {{ source('adventure_works', 'sales_salesorderheader') }}
),
staged as (
  select
    cast(salesorderid as bigint)              as salesorderid,
    cast(orderdate as date)                   as orderdate,
    cast(duedate as date)                     as duedate,
    cast(shipdate as date)                    as shipdate,
    cast(status as int)                       as status,
    cast(customerid as bigint)                as customerid,
    cast(shiptoaddressid as bigint)           as shiptoaddressid,
    cast(creditcardid as bigint)              as creditcardid
  from source
)
select * from staged