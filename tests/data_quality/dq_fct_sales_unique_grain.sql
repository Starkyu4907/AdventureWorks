-- Falha se existir duplicidade no grão da fato (1 linha por item de pedido)
select
  salesorderid,
  salesorderdetailid,
  count(*) as qtd
from {{ ref('fct_sales') }}
group by 1,2
having count(*) > 1