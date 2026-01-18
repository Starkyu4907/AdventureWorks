with detail as (
  select * from {{ ref('stg_sales_salesorderdetail') }}
),
header as (
  select * from {{ ref('stg_sales_salesorderheader') }}
),
bridge_reason as (
  select salesorderid, salesreasonid
  from {{ ref('stg_sales_salesorderheadersalesreason') }}
),
one_reason as (
  select salesorderid, min(salesreasonid) as salesreasonid
  from bridge_reason
  group by salesorderid
),
base as (
  select
    detail.salesorderdetailid,
    detail.salesorderid,
    header.orderdate,
    header.customerid,
    header.shiptoaddressid,
    header.creditcardid,
    header.status,
    detail.productid,
    detail.specialofferid,
    detail.orderqty,
    detail.unitprice,
    detail.unitpricediscount,
    one_reason.salesreasonid
  from detail
  join header
    on detail.salesorderid = header.salesorderid
  left join one_reason
    on detail.salesorderid = one_reason.salesorderid
)
select * from base
