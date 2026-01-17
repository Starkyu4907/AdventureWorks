with source as (
  select * from {{ source('adventure_works', 'sales_salesorderheader') }}
),

staged as (
  select
    cast(salesorderid as bigint)              as salesorderid,
    cast(revisionnumber as int)               as revisionnumber,
    cast(orderdate as date)                   as orderdate,
    cast(duedate as date)                     as duedate,
    cast(shipdate as date)                    as shipdate,
    cast(status as int)                       as status,
    cast(onlineorderflag as boolean)          as onlineorderflag,
    cast(purchaseordernumber as string)       as purchaseordernumber,
    cast(accountnumber as string)             as accountnumber,
    cast(customerid as bigint)                as customerid,
    cast(salespersonid as bigint)             as salespersonid,
    cast(territoryid as bigint)               as territoryid,
    cast(billtoaddressid as bigint)           as billtoaddressid,
    cast(shiptoaddressid as bigint)           as shiptoaddressid,
    cast(shipmethodid as bigint)              as shipmethodid,
    cast(creditcardid as bigint)              as creditcardid,
    cast(creditcardapprovalcode as string)    as creditcardapprovalcode,
    cast(currencyrateid as bigint)            as currencyrateid,
    cast(subtotal as double)                  as subtotal,
    cast(taxamt as double)                    as taxamt,
    cast(freight as double)                   as freight,
    cast(totaldue as double)                  as totaldue,
    cast(comment as string)                   as comment,
    cast(rowguid as string)                   as rowguid,
    cast(modifieddate as timestamp)           as modifieddate
  from source
)

select * from staged;
