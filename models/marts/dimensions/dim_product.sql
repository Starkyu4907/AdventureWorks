with product as (
    select 
            productid,
            name,
            productnumber,
            color,
            listprice,
            productmodelid
        from {{ref('stg_production_product')}}

),

productmodel as (
    select
            productmodelid,
            name
    from {{ref('stg_production_productmodel')}}
),


final as (
    select
            product.productid           as productid,
            product.name                as productname,
            product.productnumber       as productnumber,
            product.color               as color,
            product.listprice           as listprice,
            product.productmodelid      as productmodelid,
            productmodel.name           as product_model_name
    from product
    left join productmodel
        on product.productmodelid = productmodel.productmodelid

)

select *
from final