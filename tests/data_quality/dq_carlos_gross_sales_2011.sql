-- Falha se o Gross Sales de 2011 for diferente do valor esperado.
-- No dbt, um teste deve retornar LINHAS quando está "errado".
-- Então retornamos 1 linha apenas se estiver diferente.

with base as (
    select
        sum(gross_amount) as gross_sales_2011
    from {{ ref('fct_sales') }} f
    join {{ ref('dim_date') }} d
        on d.date_sk = f.date_fk
    where d.year = 2011
),

expected as (
    select cast(12646112.16 as double) as expected_value
)

select
    b.gross_sales_2011,
    e.expected_value,
    (b.gross_sales_2011 - e.expected_value) as diff
from base b
cross join expected e
where abs(b.gross_sales_2011 - e.expected_value) > 0.01
