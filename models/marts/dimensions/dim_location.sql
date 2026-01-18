with address as (
    select
        addressid,
        city,
        stateprovinceid
    from {{ ref('stg_person_address') }}
),

state as (
    select
        stateprovinceid,
        name as state_name,
        countryregioncode
    from {{ ref('stg_person_stateprovince') }}
),

country as (
    select
        countryregioncode,
        name as country_name
    from {{ ref('stg_person_countryregion') }}
),

final as (
    select
        address.addressid           as location_sk,
        address.addressid           as addressid,
        address.city                as city,
        address.stateprovinceid     as stateprovinceid,
        state.state_name            as state_name,
        state.countryregioncode     as countryregioncode,
        country.country_name        as country_name
    from address
    left join state
        on address.stateprovinceid = state.stateprovinceid
    left join country
        on state.countryregioncode = country.countryregioncode
)

select *
from final
