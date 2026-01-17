with source as (
  select * from {{ source('adventure_works', 'production_product') }}
),

staged as (
  select
    cast(productid as bigint)                 as productid,
    cast(name as string)                      as name,
    cast(productnumber as string)             as productnumber,
    cast(makeflag as boolean)                 as makeflag,
    cast(finishedgoodsflag as boolean)        as finishedgoodsflag,
    cast(color as string)                     as color,
    cast(safetystocklevel as int)             as safetystocklevel,
    cast(reorderpoint as int)                 as reorderpoint,
    cast(standardcost as double)              as standardcost,
    cast(listprice as double)                 as listprice,
    cast(size as string)                      as size,
    cast(sizeunitmeasurecode as string)       as sizeunitmeasurecode,
    cast(weightunitmeasurecode as string)     as weightunitmeasurecode,
    cast(weight as double)                    as weight,
    cast(daystomanufacture as int)            as daystomanufacture,
    cast(productline as string)               as productline,
    cast(class as string)                     as class,
    cast(style as string)                     as style,
    cast(productsubcategoryid as bigint)      as productsubcategoryid,
    cast(productmodelid as bigint)            as productmodelid,
    cast(sellstartdate as date)               as sellstartdate,
    cast(sellenddate as date)                 as sellenddate,
    cast(discontinueddate as date)            as discontinueddate,
    cast(rowguid as string)                   as rowguid,
    cast(modifieddate as timestamp)           as modifieddate
  from source
)

select * from staged;
