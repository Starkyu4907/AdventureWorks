with base_dates as (
    select distinct
        cast(orderdate as date) as date
    from {{ ref('stg_sales_salesorderheader') }}
),

final as (
    select
        cast(date_format(date, 'yyyyMMdd') as int) as date_sk,
        date                                       as date,
        year(date)                                 as year,
        month(date)                                as month,
        cast(date_format(date, 'MMMM') as string)  as month_name,
        quarter(date)                              as quarter
    from base_dates
)

select *
from final
