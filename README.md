# Adventure Works — Analytics Engineering Project

**Certificação em Engenharia de Analytics | Indicium**  
**Autor:** Matheus Cabral

---

## Visão geral

Este projeto foi desenvolvido como parte do desafio de certificação em Engenharia de Analytics da Indicium.  
O objetivo é construir uma base analítica confiável para a empresa fictícia **Adventure Works**, com foco inicial na área de **vendas**.

A Adventure Works é uma indústria de bicicletas em crescimento que possui um banco de dados transacional rico em informações. Apesar disso, esses dados não estavam preparados para análises gerenciais, dificultando a extração de insights e o suporte à tomada de decisão estratégica.

Este projeto resolve esse problema ao transformar dados transacionais em um **Data Warehouse analítico**, consistente, auditável e pronto para consumo em ferramentas de Business Intelligence.

---

## Contexto do problema

A diretoria da Adventure Works precisava responder perguntas relacionadas a desempenho de vendas, comportamento de clientes, produtos mais relevantes, distribuição geográfica e impacto de promoções ao longo do tempo.

Embora essas informações existissem no banco de dados operacional, o modelo original não era adequado para análises, pois estava altamente normalizado e orientado a transações, não a agregações e métricas de negócio.

Diante desse cenário, foi proposta a criação de uma camada analítica dedicada, separada do ambiente transacional, seguindo boas práticas de **Analytics Engineering** e **Modern Analytics Stack**.

---

## Abordagem e arquitetura da solução

A solução foi construída utilizando **Databricks** como Data Warehouse e **dbt** como ferramenta de transformação, organização e governança dos dados.

O projeto foi estruturado em camadas bem definidas, garantindo clareza, organização e facilidade de manutenção. O fluxo de dados segue um caminho progressivo, no qual cada camada possui uma responsabilidade específica, desde a organização do dado bruto até a entrega do modelo final para análise.

Essa separação de responsabilidades permite evoluir o modelo com segurança, mantendo consistência e confiabilidade nos dados disponibilizados.

---

## Preparação dos dados

A primeira etapa do projeto consistiu na preparação dos dados brutos. Nessa fase, os dados foram organizados, padronizados e ajustados para garantir consistência de tipos e nomenclaturas.

Não foram aplicadas regras de negócio nessa etapa. O objetivo foi apenas tornar os dados previsíveis e adequados para transformações posteriores, criando uma base sólida para o restante do projeto.

---

## Consolidação e definição do grão

Na etapa seguinte, os dados foram consolidados para definir corretamente o **grão analítico** do modelo. O grão escolhido foi **uma linha por item de pedido**, ou seja, cada registro representa um produto vendido em um pedido específico.

Essa decisão foi fundamental para garantir cálculos corretos de métricas como faturamento, quantidade vendida e ticket médio, além de permitir análises detalhadas por produto, cliente, tempo e localização.

Também foi nessa etapa que foram resolvidas complexidades do modelo transacional, como relacionamentos do tipo muitos-para-muitos, garantindo que o modelo analítico não apresentasse duplicação de métricas.

---

## Modelo dimensional

O modelo final foi implementado seguindo o padrão **dimensional em estrela**, preparado para consumo direto em ferramentas de BI.

A tabela central do modelo é a tabela fato de vendas, que concentra as métricas principais do negócio. Campos de identificação de pedido foram mantidos na tabela fato como chaves degeneradas, permitindo rastreabilidade, auditoria e análises detalhadas quando necessário.

As dimensões do modelo fornecem o contexto analítico necessário para exploração dos dados, permitindo filtros e agregações por diferentes perspectivas de negócio, como tempo, produto, cliente, localização, meio de pagamento e motivo de venda.

---

## Métricas e consistência analítica

As métricas de negócio foram calculadas diretamente no Data Warehouse, garantindo que todos os dashboards e análises utilizem uma única fonte de verdade.

Essa abordagem evita divergências entre relatórios, facilita auditorias e atende ao requisito explícito de garantir a veracidade dos números apresentados à diretoria da empresa.

---

## Qualidade e governança dos dados

Durante o desenvolvimento, foram aplicadas práticas de qualidade e governança para garantir a confiabilidade do modelo final. Os dados passaram por validações de integridade, consistência e relacionamento entre tabelas, além de documentação clara para facilitar o entendimento e o uso correto das informações.

Essas práticas asseguram que o modelo possa ser utilizado com confiança por analistas e usuários de negócio.

---

## Resultado final

O resultado do projeto é um Data Warehouse analítico:

- Confiável e consistente  
- Preparado para análises e dashboards interativos  
- Organizado de forma clara e escalável  
- Alinhado às melhores práticas de Analytics Engineering  

O modelo final permite responder integralmente às perguntas de negócio propostas no desafio e estabelece uma base sólida para futuras evoluções da área de dados da Adventure Works.

---

## Considerações finais

Este projeto demonstra, de forma prática, a aplicação de conceitos fundamentais como modelagem dimensional, separação de camadas, governança de métricas e uso do Modern Analytics Stack.

Mais do que responder perguntas pontuais, a solução cria uma fundação confiável para decisões orientadas por dados, permitindo que a Adventure Works avance em sua jornada para se tornar uma empresa verdadeiramente data driven.

---
