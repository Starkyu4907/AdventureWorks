with creditcard as(
    select
        creditcardid,
        cardtype
    from {{ref('stg_sales_creditcard')}}

),

final as (
    select
        creditcardid        as creditcardid,
        cardtype            as cardtype
    from creditcard
)

select *
from final
