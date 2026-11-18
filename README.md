# Meu Financeiro

Aplicativo de finanças pessoais feito com HTML, CSS e JavaScript puro.

## Estrutura do projeto

```
Finan-as-pessoais/
├── index.html              # Página principal do aplicativo
├── assets/
│   ├── css/
│   │   └── style.css       # Identidade visual e layout responsivo
│   └── js/
│       └── app.js          # Cadastro, cálculos, análises e exportação
├── docs/
│   └── funcionalidades.md  # Guia das funcionalidades
└── README.md
```

## Funcionalidades

- Cadastro de receitas e despesas.
- Cálculo automático de saldo mensal e taxa de economia.
- Despesas agrupadas por categoria.
- Limites de gastos e alertas quando ultrapassados.
- Comparação de despesas com o mês anterior.
- Diagnóstico automático com alertas e sugestões de economia.
- Exportação dos lançamentos em CSV, compatível com Excel.
- Interface adaptável a computador e celular.

## Visualizar o aplicativo

Abra `index.html` no navegador ou habilite o GitHub Pages:

1. Acesse **Settings → Pages**.
2. Em **Build and deployment**, escolha **Deploy from a branch**.
3. Selecione a branch `main` e a pasta `/(root)`.
4. Salve e aguarde a publicação.

## Dados e privacidade

Os lançamentos e limites ficam no armazenamento local do navegador (`localStorage`). Não há conexão com bancos nem envio de dados para servidores. Os dados não são sincronizados entre dispositivos; exporte CSV para manter um backup.

## Tecnologias

HTML5, CSS3 e JavaScript, sem bibliotecas externas ou processo de build.
