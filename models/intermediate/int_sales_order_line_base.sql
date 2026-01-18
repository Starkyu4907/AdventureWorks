with detail as (
    select *
    from {{ ref('stg_sales_salesorderdetail') }}
),

header as (
    select *
    from {{ ref('stg_sales_salesorderheader') }}
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
        detail.unitpricediscount
    from detail
    join header
      on detail.salesorderid = header.salesorderid
)

select *
from base
