<!doctype html>
<html lang="pt-BR">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>README – Adventure Works | Analytics Engineering</title>
  <style>
    :root{
      --bg:#0b0f14; --card:#0f1620; --text:#e6edf3; --muted:#9fb0c3;
      --line:#1f2a37; --accent:#7aa2ff; --accent2:#34d399;
      --code:#0a0f18; --shadow: 0 10px 30px rgba(0,0,0,.35);
      --radius:14px;
      --mono: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, "Liberation Mono", "Courier New", monospace;
      --sans: ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Arial, "Helvetica Neue", "Noto Sans", "Liberation Sans", sans-serif;
    }
    *{box-sizing:border-box}
    body{
      margin:0; padding:32px 18px;
      background: radial-gradient(1200px 600px at 20% 0%, rgba(122,162,255,.18), transparent 55%),
                  radial-gradient(900px 500px at 80% 10%, rgba(52,211,153,.12), transparent 55%),
                  var(--bg);
      color:var(--text);
      font-family:var(--sans);
      line-height:1.55;
    }
    .container{max-width:980px; margin:0 auto}
    header{
      background: linear-gradient(180deg, rgba(122,162,255,.14), rgba(15,22,32,.55));
      border:1px solid var(--line);
      border-radius: var(--radius);
      padding:26px 22px;
      box-shadow: var(--shadow);
    }
    h1{margin:0 0 6px; font-size:28px; letter-spacing:.2px}
    .subtitle{margin:0; color:var(--muted); font-size:14.5px}
    .badge-row{display:flex; flex-wrap:wrap; gap:10px; margin-top:14px}
    .badge{
      display:inline-flex; align-items:center; gap:8px;
      padding:7px 10px;
      border-radius:999px;
      border:1px solid var(--line);
      background: rgba(15,22,32,.65);
      font-size:12.5px;
      color:var(--muted);
      white-space:nowrap;
    }
    .dot{width:7px;height:7px;border-radius:999px;background:var(--accent)}
    .dot.green{background:var(--accent2)}
    main{margin-top:18px; display:flex; flex-direction:column; gap:14px}
    section{
      background: rgba(15,22,32,.72);
      border:1px solid var(--line);
      border-radius: var(--radius);
      padding:20px 22px;
      box-shadow: var(--shadow);
    }
    h2{margin:0 0 10px; font-size:18px}
    h3{margin:14px 0 8px; font-size:15.5px; color:#dbe7ff}
    p{margin:8px 0; color:var(--text)}
    .muted{color:var(--muted)}
    hr{border:0; border-top:1px solid var(--line); margin:14px 0}
    ul{margin:8px 0 0 18px; padding:0}
    li{margin:6px 0; color:var(--text)}
    code, pre{font-family:var(--mono)}
    pre{
      margin:10px 0 0;
      padding:14px 14px;
      background: rgba(10,15,24,.88);
      border:1px solid var(--line);
      border-radius: 12px;
      overflow:auto;
    }
    .grid{
      display:grid;
      grid-template-columns: 1fr;
      gap:12px;
    }
    @media (min-width: 880px){
      .grid.cols-2{grid-template-columns: 1fr 1fr}
    }
    table{
      width:100%;
      border-collapse:collapse;
      margin-top:10px;
      border:1px solid var(--line);
      border-radius:12px;
      overflow:hidden;
    }
    th, td{
      padding:10px 10px;
      border-bottom:1px solid var(--line);
      vertical-align:top;
      font-size:13.5px;
    }
    th{
      text-align:left;
      color:#dbe7ff;
      background: rgba(122,162,255,.08);
    }
    tr:last-child td{border-bottom:none}
    .tree{
      font-family: var(--mono);
      font-size: 13px;
      color: #cfe3ff;
      background: rgba(10,15,24,.88);
      border:1px solid var(--line);
      border-radius: 12px;
      padding: 14px;
      overflow:auto;
      margin-top:10px;
      white-space:pre;
    }
    .callout{
      border-left:4px solid var(--accent2);
      background: rgba(52,211,153,.08);
      padding:12px 12px;
      border-radius:12px;
      margin-top:10px;
      color: var(--text);
    }
    footer{
      margin-top:14px;
      text-align:center;
      color:var(--muted);
      font-size:12.5px;
    }
    a{color:var(--accent); text-decoration:none}
    a:hover{text-decoration:underline}
  </style>
</head>

<body>
  <div class="container">

    <header>
      <h1>Adventure Works – Analytics Engineering Project</h1>
      <p class="subtitle">Certificação em Engenharia de Analytics – Indicium</p>

      <div class="badge-row">
        <span class="badge"><span class="dot"></span>Databricks (DW)</span>
        <span class="badge"><span class="dot green"></span>dbt (Transformação, Testes e Docs)</span>
        <span class="badge"><span class="dot"></span>Modelo Dimensional (Star Schema)</span>
        <span class="badge"><span class="dot green"></span>Self-Service BI</span>
      </div>
    </header>

    <main>

      <section>
        <h2>Visão Geral</h2>
        <p>
          Este projeto implementa uma plataforma moderna de analytics para a empresa fictícia <strong>Adventure Works</strong>,
          com foco inicial na área de <strong>Vendas (Sales)</strong>. O objetivo é transformar dados transacionais em um
          <strong>Data Warehouse analítico</strong>, confiável e preparado para <strong>Self-Service BI</strong>,
          seguindo princípios do <strong>Modern Analytics Stack</strong>.
        </p>
      </section>

      <section>
        <h2>Objetivos do Projeto</h2>
        <ul>
          <li>Construir um <strong>Data Warehouse analítico</strong> a partir de dados transacionais.</li>
          <li>Garantir <strong>qualidade, rastreabilidade e consistência</strong> dos dados.</li>
          <li>Criar uma <strong>tabela fato</strong> de vendas com métricas confiáveis.</li>
          <li>Modelar <strong>dimensões</strong> para responder às perguntas do negócio (Item 4 do desafio).</li>
          <li>Preparar a camada de dados para <strong>dashboards interativos</strong>.</li>
          <li>Atender ao requisito de <strong>validação de dados</strong> solicitado pela diretoria.</li>
        </ul>
      </section>

      <section>
        <h2>Arquitetura de Dados</h2>
        <p class="muted">O projeto segue uma arquitetura em camadas, alinhada ao Modern Analytics Stack:</p>
        <pre>RAW (CSV / Banco Transacional)
  ↓
STAGING (stg_)
  ↓
INTERMEDIATE (int_)
  ↓
MARTS
  ├── DIMENSIONS (dim_)
  └── FACT (fct_)</pre>

        <table>
          <thead>
            <tr>
              <th>Camada</th>
              <th>Objetivo</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td><strong>Staging (stg_)</strong></td>
              <td>Padronização de tipos, seleção de colunas relevantes e limpeza técnica (sem lógica de negócio).</td>
            </tr>
            <tr>
              <td><strong>Intermediate (int_)</strong></td>
              <td>Resolução de problemas estruturais (joins, relações N:N, definição de grão base).</td>
            </tr>
            <tr>
              <td><strong>Marts (dim_/fct_)</strong></td>
              <td>Modelo dimensional final para BI (tabela fato + dimensões).</td>
            </tr>
          </tbody>
        </table>
      </section>

      <section>
        <h2>Modelagem Dimensional</h2>

        <div class="grid cols-2">
          <div>
            <h3>Tabela Fato</h3>
            <ul>
              <li><strong>fct_sales</strong></li>
              <li><strong>Grão:</strong> 1 linha por item de pedido (linha da <code>salesorderdetail</code>).</li>
            </ul>
          </div>

          <div>
            <h3>Dimensões</h3>
            <ul>
              <li><code>dim_date</code></li>
              <li><code>dim_product</code></li>
              <li><code>dim_customer</code></li>
              <li><code>dim_location</code></li>
              <li><code>dim_creditcard</code></li>
              <li><code>dim_sales_reason</code></li>
            </ul>
          </div>
        </div>

        <div class="callout">
          <strong>Decisão-chave:</strong> o grão da fato foi definido como “item do pedido”, permitindo cálculos corretos de
          faturamento e quantidade, e suportando filtros por produto, cliente, tempo e localização.
        </div>
      </section>

      <section>
        <h2>Principais Decisões de Modelagem</h2>

        <h3>1) Degenerate Dimensions</h3>
        <p>
          Os campos <code>salesorderid</code> e <code>salesorderdetailid</code> foram mantidos na fato como
          <em>degenerate dimensions</em> para rastreabilidade, drill-through e auditoria.
        </p>

        <h3>2) Resolução do relacionamento N:N (Sales Reason)</h3>
        <p>
          O relacionamento entre pedidos e motivos de venda é N:N. Para evitar duplicação de métricas, foi criada uma camada
          intermediate que garante um único motivo por pedido, preservando consistência nas agregações.
        </p>

        <h3>3) Métricas centralizadas no DW</h3>
        <p>
          Métricas como faturamento bruto, líquido e desconto são calculadas na <code>fct_sales</code>, não no BI, garantindo
          consistência, governança e reprodutibilidade.
        </p>
      </section>

      <section>
        <h2>Qualidade e Governança (dbt)</h2>
        <ul>
          <li><strong>Tests de Source</strong> para garantir integridade do dado bruto.</li>
          <li><strong>Tests de Primary Key</strong> (unique / not_null) nas tabelas de dimensão e fato.</li>
          <li><strong>Tests de relacionamento</strong> (relationships) para chaves estrangeiras da fato.</li>
          <li><strong>Documentação</strong> de tabelas e colunas para consumo em BI e manutenção.</li>
        </ul>
      </section>

      <section>
        <h2>Estrutura do Repositório</h2>
        <div class="tree">models/
├── staging/
│   ├── sales/
│   ├── person/
│   └── production/
│
├── intermediate/
│   ├── int_sales_order_line_base.sql
│   └── int_sales_order_line_base_v2.sql
│
├── marts/
│   ├── dimensions/
│   │   ├── dim_date.sql
│   │   ├── dim_product.sql
│   │   ├── dim_customer.sql
│   │   ├── dim_location.sql
│   │   ├── dim_creditcard.sql
│   │   └── dim_sales_reason.sql
│   │
│   └── fact/
│       └── fct_sales.sql
│
└── schema.yml</div>
      </section>

      <section>
        <h2>Perguntas de Negócio Atendidas (Item 4)</h2>
        <p>
          O modelo foi desenhado para responder integralmente às perguntas do item 4 do desafio utilizando apenas as tabelas
          analíticas (marts), suportando filtros por produto, cartão, motivo, data, cliente, status e localização.
        </p>
        <ul>
          <li>Número de pedidos, quantidade comprada e valor total negociado por múltiplas dimensões.</li>
          <li>Produtos com maior ticket médio por mês/ano/cidade/estado/país.</li>
          <li>Top 10 clientes por valor total negociado com filtros.</li>
          <li>Top 5 cidades por valor total negociado com filtros.</li>
          <li>Série temporal de pedidos, quantidade e valor total negociado.</li>
          <li>Produto com maior quantidade para motivo de venda “Promotion”.</li>
        </ul>
      </section>

      <section>
        <h2>Execução</h2>
        <p class="muted">Comandos típicos utilizados durante o desenvolvimento:</p>
        <pre><code>dbt run
dbt test --select source:*
dbt test</code></pre>
      </section>

      <section>
        <h2>Apresentação em Vídeo</h2>
        <p>
          O vídeo apresenta: objetivo do projeto, modelagem dimensional, execução dos modelos (<code>dbt run</code>),
          execução dos testes (<code>dbt test</code>), validação de dados e demonstração do dashboard e filtros.
        </p>
      </section>

      <section>
        <h2>Autor</h2>
        <p><strong>Matheus Cabral</strong><br />Certificação em Engenharia de Analytics – Indicium</p>
      </section>

    </main>

    <footer>
      <p>README em HTML pronto para copiar e colar.</p>
    </footer>

  </div>
</body>
</html>
