# Configuração da nuvem (Supabase)

O repositório contém o schema seguro inicial. **A nuvem ainda não está conectada ao aplicativo**: crie o projeto e configure as credenciais antes de usar dados online.

## 1. Criar o projeto
1. Acesse https://supabase.com e crie um projeto.
2. Guarde a senha do banco em um gerenciador de senhas.
3. Em Project Settings → API, copie Project URL e a chave publicável (anon/public).

## 2. Criar tabelas e políticas
1. Abra SQL Editor → New query no Supabase.
2. Execute todo o arquivo supabase/schema.sql.
3. Confirme as tabelas entries, budgets e goals e que RLS está habilitado.

## 3. Restringir a uma única pessoa
1. Em Authentication → Providers → Email, habilite login por e-mail.
2. Em Authentication → Settings / User Signups, desative novos cadastros públicos (a nomenclatura pode variar).
3. Em Authentication → Users, crie ou convide somente seu usuário.
4. Não compartilhe sua senha e habilite MFA se disponível.
5. As políticas RLS limitam cada registro ao auth.uid() da sessão.

## 4. Configurar a aplicação
1. Copie assets/js/supabase-config.example.js para assets/js/supabase-config.js.
2. Preencha URL e chave publicável.
3. Nunca use service_role no navegador, no GitHub ou no Lovable.
4. Adicione assets/js/supabase-config.js ao .gitignore antes de versionar credenciais.

## 5. Situação da implementação
O SQL cria a estrutura de nuvem para lançamentos, orçamentos e metas com isolamento por usuário. A interface atual ainda usa localStorage. A próxima etapa é integrar login, leitura/gravação e migração dos dados locais para o Supabase. Não insira dados financeiros reais até concluir a integração e os testes.

## 6. Testes antes de usar
- Login somente com a conta autorizada e acesso negado sem sessão.
- Criar e excluir registros e confirmar persistência após sair e entrar.
- Abrir em outro dispositivo e confirmar sincronização.
- Confirmar que outro usuário não consegue consultar seus registros.
- Exportar CSV como cópia de segurança periódica.

## Privacidade
A chave publicável pode ficar no frontend quando RLS estiver corretamente configurado. A chave secreta service_role ignora RLS e nunca deve ser exposta no navegador.
