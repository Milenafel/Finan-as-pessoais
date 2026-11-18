-- Meu Financeiro: estrutura inicial do banco em nuvem.
-- Execute este arquivo no SQL Editor do projeto Supabase.
-- RLS garante que cada usuário só acesse os próprios registros.
create extension if not exists pgcrypto;
create table if not exists public.entries (
 id uuid primary key default gen_random_uuid(),
 user_id uuid not null references auth.users(id) on delete cascade,
 description text not null check (char_length(description) between 1 and 80),
 type text not null check (type in ('income','expense')),
 amount numeric(12,2) not null check (amount > 0),
 category text not null,
 entry_date date not null,
 created_at timestamptz not null default now(),
 updated_at timestamptz not null default now()
);
create table if not exists public.budgets (
 id uuid primary key default gen_random_uuid(),
 user_id uuid not null references auth.users(id) on delete cascade,
 category text not null,
 monthly_limit numeric(12,2) not null check (monthly_limit > 0),
 created_at timestamptz not null default now(),
 updated_at timestamptz not null default now(),
 unique(user_id,category)
);
create table if not exists public.goals (
 id uuid primary key default gen_random_uuid(),
 user_id uuid not null references auth.users(id) on delete cascade,
 name text not null check (char_length(name) between 1 and 100),
 target_amount numeric(12,2) not null check (target_amount > 0),
 current_amount numeric(12,2) not null default 0 check (current_amount >= 0),
 target_date date,
 created_at timestamptz not null default now(),
 updated_at timestamptz not null default now()
);
create index if not exists entries_user_date_idx on public.entries(user_id,entry_date desc);
create index if not exists budgets_user_idx on public.budgets(user_id);
create index if not exists goals_user_idx on public.goals(user_id);
alter table public.entries enable row level security;
alter table public.budgets enable row level security;
alter table public.goals enable row level security;
drop policy if exists "Users manage own entries" on public.entries;
create policy "Users manage own entries" on public.entries for all to authenticated using(auth.uid()=user_id) with check(auth.uid()=user_id);
drop policy if exists "Users manage own budgets" on public.budgets;
create policy "Users manage own budgets" on public.budgets for all to authenticated using(auth.uid()=user_id) with check(auth.uid()=user_id);
drop policy if exists "Users manage own goals" on public.goals;
create policy "Users manage own goals" on public.goals for all to authenticated using(auth.uid()=user_id) with check(auth.uid()=user_id);
-- Sem política para anon: visitantes não leem nem gravam dados.
