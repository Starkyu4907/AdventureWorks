# Adventure Works — Analytics Engineering Project  
**Certificação em Engenharia de Analytics | Indicium**  
**Autor:** Matheus Cabral  

---

## Visão geral

Este projeto foi desenvolvido como parte do desafio de certificação em **Engenharia de Analytics da Indicium**.  
O objetivo é construir uma **base analítica confiável, escalável e governada** para a empresa fictícia **Adventure Works**, com foco inicial na área de **vendas** e suporte à tomada de decisão estratégica.

A Adventure Works é uma indústria de bicicletas em crescimento que possui um banco de dados transacional rico em informações. No entanto, esses dados não estavam preparados para análises gerenciais, o que dificultava a geração de insights, comparações históricas e análises multidimensionais.

Este projeto resolve esse problema ao transformar dados transacionais em um **Data Warehouse analítico**, consistente, auditável e pronto para consumo em ferramentas de **Business Intelligence**, seguindo boas práticas de **Analytics Engineering** e **Modern Analytics Stack**.

---

## Contexto do problema

A diretoria da Adventure Works precisava responder perguntas relacionadas a:

- Desempenho de vendas ao longo do tempo  
- Comportamento de compra dos clientes  
- Produtos e categorias mais relevantes  
- Distribuição geográfica das vendas  
- Impacto de promoções, meios de pagamento e motivos de venda  

Embora essas informações estivessem presentes no banco de dados operacional, o modelo original era altamente normalizado e orientado a transações, tornando análises agregadas e comparações temporais complexas, lentas e propensas a erro.

Diante desse cenário, foi proposta a criação de uma **camada analítica dedicada**, separada do ambiente transacional, garantindo confiabilidade, clareza e padronização das métricas utilizadas pela área de negócio.

---

## Abordagem e arquitetura da solução

A solução foi construída utilizando:

- **Databricks** como Data Warehouse analítico  
- **dbt** como ferramenta de transformação, versionamento, documentação e governança  
- **Power BI** como camada de consumo e visualização dos dados  

O projeto foi estruturado em **camadas bem definidas**, garantindo separação de responsabilidades, facilidade de manutenção e evolução segura do modelo.

O fluxo de dados segue uma abordagem progressiva, desde o dado bruto até o modelo final consumido em dashboards, permitindo rastreabilidade, auditoria e consistência analítica em todas as etapas.

---

## Preparação dos dados

Na primeira etapa, os dados brutos foram organizados e padronizados.  
Essa camada teve como foco:

- Padronização de tipos de dados  
- Normalização de nomenclaturas  
- Ajustes estruturais mínimos para previsibilidade  

Nenhuma regra de negócio foi aplicada nesse estágio. O objetivo foi criar uma **base estável e confiável**, servindo como fundação para as transformações analíticas posteriores.

---

## Consolidação e definição do grão

Na etapa intermediária, os dados foram consolidados para definição clara do **grão analítico** do modelo.

O grão adotado foi **uma linha por item de pedido**, ou seja, cada registro representa um produto vendido dentro de um pedido específico.

Essa decisão foi fundamental para:

- Garantir cálculos corretos de faturamento, quantidade vendida e ticket médio  
- Permitir análises detalhadas por produto, cliente, tempo e localização  
- Evitar duplicações de métricas  

Também foi nessa etapa que foram tratadas complexidades do modelo transacional, como relacionamentos do tipo **muitos-para-muitos**, assegurando integridade e consistência dos resultados analíticos.

---

## Modelo dimensional

O modelo final foi implementado seguindo o padrão **dimensional em estrela**, preparado para consumo direto em ferramentas de BI.

A tabela central do modelo é a **tabela fato de vendas**, que concentra as principais métricas do negócio, como:

- Valor bruto  
- Quantidade comprada  
- Número de pedidos  

Campos identificadores de pedido foram mantidos como **chaves degeneradas**, permitindo rastreabilidade, auditoria e análises detalhadas quando necessário.

As tabelas dimensão fornecem o contexto analítico necessário para exploração dos dados, permitindo filtros e segmentações por:

- Tempo  
- Produto  
- Cliente  
- Localização  
- Meio de pagamento  
- Motivo de venda  

---

## Métricas e consistência analítica

As métricas de negócio foram definidas e calculadas diretamente no **Data Warehouse**, garantindo que toda a camada de visualização utilize uma **única fonte de verdade**.

Essa abordagem:

- Evita divergências entre relatórios  
- Facilita auditorias  
- Garante consistência entre diferentes análises  
- Atende aos requisitos de confiabilidade exigidos pela diretoria  

---

## Camada de visualização e análise

Os dados modelados foram consumidos no **Power BI**, onde foram construídos dashboards interativos com foco em **análise exploratória, comparativa e estratégica**.

Os dashboards permitem:

- Acompanhamento de KPIs principais  
- Análises temporais de desempenho  
- Comparações por cliente, produto e localização  
- Identificação de padrões de comportamento de compra  
- Exploração de relações entre ticket médio, volume e faturamento  

A solução prioriza **clareza visual, interatividade e storytelling**, permitindo que usuários de negócio naveguem pelos dados de forma intuitiva.

---

## Qualidade e governança dos dados

Durante o desenvolvimento, foram aplicadas práticas de qualidade e governança, incluindo:

- Validações de integridade e relacionamento entre tabelas  
- Padronização de métricas  
- Documentação clara do modelo e das transformações  

Essas práticas garantem que o modelo analítico possa ser utilizado com confiança por analistas e usuários de negócio, além de facilitar futuras manutenções e evoluções.

---

## Resultado final

O resultado do projeto é um **Data Warehouse analítico**:

- Confiável e consistente  
- Preparado para análises e dashboards interativos  
- Organizado de forma clara e escalável  
- Alinhado às melhores práticas de Analytics Engineering  

A solução permite responder integralmente às perguntas de negócio propostas no desafio e estabelece uma base sólida para a evolução da área de dados da Adventure Works.

---

## Considerações finais

Este projeto demonstra, de forma prática, a aplicação de conceitos fundamentais como:

- Modelagem dimensional  
- Definição correta de grão  
- Separação de camadas  
- Governança de métricas  
- Uso do Modern Analytics Stack  

Mais do que responder perguntas pontuais, a solução cria uma **fundação confiável para decisões orientadas por dados**, permitindo que a Adventure Works avance em sua jornada para se tornar uma empresa verdadeiramente **data driven**.
