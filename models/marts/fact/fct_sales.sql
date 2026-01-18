with base as (
  select
    salesorderid,
    salesorderdetailid,
    orderdate,
    customerid,
    shiptoaddressid,
    creditcardid,
    status,
    productid,
    specialofferid,
    orderqty,
    unitprice,
    unitpricediscount,
    salesreasonid
  from {{ ref('int_sales_order_line_base_v2') }}

),

final as (
  select
    -- Degenerate keys
    base.salesorderid                            as salesorderid,
    base.salesorderdetailid                      as salesorderdetailid,

    -- FKs
    cast(date_format(base.orderdate, 'yyyyMMdd') as int) as date_fk,
    base.productid                               as productid_fk,
    base.customerid                              as customerid_fk,
    base.shiptoaddressid                         as location_fk,
    base.salesreasonid                           as salesreasonid_fk,
    base.creditcardid                            as creditcardid_fk,

    -- Atributo
    base.status                                  as status,

    -- Métricas
    base.orderqty                                as orderqty,
    (base.unitprice * base.orderqty)             as gross_amount,

    (base.unitprice * base.orderqty * (1 - coalesce(base.unitpricediscount, 0))) as net_amount,
    (base.unitprice * base.orderqty) - (base.unitprice * base.orderqty * (1 - coalesce(base.unitpricediscount, 0))) as discount_amount

  from base
)

select *
from final

