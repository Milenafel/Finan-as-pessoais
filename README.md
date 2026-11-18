# Meu Financeiro

Aplicativo de finanças pessoais feito com HTML, CSS e JavaScript.

## Estrutura do projeto

```
Finan-as-pessoais/
├── index.html
├── assets/
│   ├── css/style.css
│   └── js/
│       ├── app.js
│       └── supabase-config.example.js
├── docs/
│   ├── funcionalidades.md
│   └── CONFIGURACAO_SUPABASE.md
├── supabase/schema.sql
└── README.md
```

## Funcionalidades atuais
- Cadastro de receitas e despesas.
- Cálculo de saldo mensal e taxa de economia.
- Despesas por categoria, limites e alertas.
- Comparação mensal e diagnóstico financeiro.
- Exportação CSV e interface responsiva.

## Preparação para armazenamento em nuvem
O diretório `supabase/` contém o schema SQL para criar tabelas de lançamentos, orçamentos e metas no Supabase, com Row Level Security (RLS) e isolamento por usuário.

**Importante:** o aplicativo ainda utiliza `localStorage`. O banco em nuvem ainda não está conectado à interface; login, sincronização e migração de dados precisam ser implementados e testados antes de inserir dados financeiros reais.

Siga o passo a passo em [docs/CONFIGURACAO_SUPABASE.md](docs/CONFIGURACAO_SUPABASE.md).

## Privacidade
- Desative novos cadastros públicos no Supabase e crie somente a conta autorizada.
- As políticas RLS restringem cada registro ao usuário autenticado correspondente.
- Nunca publique a chave secreta `service_role`.
- Não versione o arquivo local `assets/js/supabase-config.js` com credenciais.

## Visualizar
Abra `index.html` no navegador. Para publicar pelo GitHub Pages, acesse Settings → Pages e selecione a branch principal e a pasta raiz.
