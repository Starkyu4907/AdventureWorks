with sr as (
    select
            salesreasonid,
            name as reason_name,
            reasontype
    from {{ ref("stg_sales_salesreason") }}

),

final as (
    select
            salesreasonid           as salesreasonid,
            reason_name             as reason_name,
            reasontype              as reasontype
    from sr
)

select *
from final