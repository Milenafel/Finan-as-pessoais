# Meu Financeiro — Controle pessoal

Um painel simples para acompanhar receitas, despesas, saldo mensal e taxa de economia, com análise automática e limites de orçamento por categoria.

## Como usar
1. Abra o site (ou execute `index.html` localmente).
2. Escolha o mês.
3. Clique em **Novo lançamento** para adicionar receitas ou despesas.
4. Defina limites mensais nas categorias de orçamento.
5. Confira **Diagnóstico do mês** para alertas e recomendações.
6. Use **Exportar CSV** para baixar uma cópia dos lançamentos.

## Recursos
- Resumo de receitas, despesas, saldo e taxa de economia
- Despesas agrupadas por categoria
- Diagnóstico baseado em saldo, percentual da renda comprometido e limites de categoria
- Limites mensais editáveis
- Persistência local no navegador (`localStorage`)
- Exportação CSV
- Interface responsiva para celular e computador

## Privacidade
Os dados são armazenados localmente no navegador usado para abrir o app. Eles não são enviados a um servidor. Use a exportação CSV para backup e evite limpar os dados do navegador antes de fazer uma cópia.

## Publicar com GitHub Pages
No repositório, abra **Settings → Pages**, selecione **Deploy from a branch**, escolha **main** e a pasta **/(root)**, e salve. O GitHub Pages pode levar alguns minutos para publicar.

## Tecnologias
HTML, CSS e JavaScript puro; sem dependências externas.
