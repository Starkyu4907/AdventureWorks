select *
from {{ ref('fct_sales') }}
where
    salesorderid is null
 or salesorderdetailid is null
 or date_fk is null
 or productid_fk is null
 or customerid_fk is null
 or location_fk is null
