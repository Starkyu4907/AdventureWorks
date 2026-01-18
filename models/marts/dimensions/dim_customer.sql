with customer as (
    select
        customerid,
        personid,
        storeid
    from {{ ref('stg_sales_customer') }}
),

person as (
    select
        businessentityid,
        persontype,
        firstname,
        lastname
    from {{ ref('stg_person_person') }}
),

store as (
    select
        businessentityid,
        name as storename
    from {{ ref('stg_sales_store') }}
),

final as (
    select
        customer.customerid as customerid,
        customer.personid   as personid,
        customer.storeid    as storeid,

        -- Nome da pessoa (quando personid existir)
        case
            when customer.personid is not null then trim(concat(person.firstname, ' ', person.lastname))
            else null
        end as personname,

        -- Nome da loja (quando storeid existir)
        case
            when customer.storeid is not null then store.storename
            else null
        end as storename
    from customer
    left join person
        on customer.personid = person.businessentityid
    left join store
        on customer.storeid = store.businessentityid
)

select *
from final

