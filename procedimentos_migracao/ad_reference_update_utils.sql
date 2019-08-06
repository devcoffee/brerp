-- cria um backup das referências
create table bkp_column_reference as (select c.ad_column_id, t.tablename, c.columnname, c.ad_reference_id from ad_column c left join ad_table t using (ad_table_id));
-- adiciona uma coluna com o numero de colunas do tipo tabela/tabela direta para comparação de resultado
alter table bkp_column_reference add column num_before numeric default 0;
update bkp_column_reference set num_before = (select count(*) from ad_column c  join ad_table t on c.ad_table_id = t.ad_table_id  where c.AD_Reference_ID in (18,19))

-- atualiza todas as VIEWS do sistema para usar a referência Procurar ao invés de Tabela ou Tabela Direta. 
-- A razão para isso é que nenhuma VIEW deveria apresentar um dropdown para um usuário, pois os campos são somente leitura. Esta query deveria ser frequentemente executada conforme novas views são criadas e a referência por padrão é definida como Tabela.
update ad_column
set ad_reference_id = 30
where ad_column_id in (
select c.ad_column_id
 from ad_column c
 join ad_table t on c.ad_table_id = t.ad_table_id
 where isview = 'Y'
  and c.AD_Reference_ID in (18,19)
);

-- Atualiza todas as colunas CreatedBy e UpdatedBy para Procurar. A razão é que ninguém deve editar estes campos
update ad_column
set ad_reference_id = 30
where ad_column_id in (
select c.ad_column_id
 from ad_column c
 where c.columnname in ('CreatedBy','UpdatedBy')
  and c.AD_Reference_ID in (18,19)
);

-- Afim de atualizar as referencias para janelas ativas e editáveis nós vamos precisar criar uma lista rápida de tabelas que tem alto volume de registros
DROP TABLE IF EXISTS bkp_bigtables;
CREATE TABLE bkp_bigtables AS 
SELECT
 relname AS objectname, reltuples AS entries, pg_size_pretty(relpages::bigint*8*1024) AS size
FROM pg_class
 WHERE reltuples >= 55
and relkind = 'r';

-- Cria uma lista com o nome da tabela para cada coluna elegível
DROP TABLE IF EXISTS bkp_coltotable;
CREATE TABLE bkp_coltotable AS
Select 
c.ad_column_id, c.columnname, coalesce(lower(rtt.tablename),lower(SUBSTR (TRIM (c.columnname), 1, LENGTH (TRIM (c.columnname)) - 3))) as tablename
from ad_column c
left outer join ad_reference r on c.ad_reference_value_id = r.ad_reference_id
left outer join AD_Ref_Table rt on rt.ad_reference_id = r.ad_reference_id
left outer join ad_table rtt on rt.ad_table_id = rtt.ad_table_id
where c.AD_Reference_ID in (18,19)
and lower(columnname) like '%_id';

-- atualiza as colunas necessárias. Note que foi incluida uma linha relacionada a coluna ad_val_rule_id (Validação Dinâmica). A razão é que a referência Procurar com Validação Dinâmica que existem em uma aba filha não se comporta como Tabela e Tabela Direta 
update ad_column set ad_reference_id = 30
where ad_column_id in 
(
select ad_column_id 
from bkp_coltotable
where tablename in
(
select objectname from bkp_bigtables 
)
)
and ad_val_rule_id is null
and lower(columnname) not in ('ad_org_id','user1_id','user2_id','ad_val_rule_id')
;

-- adiciona uma coluna com o numero de colunas do tipo tabela/tabela direta após os updates para comparação de resultado
alter table bkp_column_reference add column num_after numeric default 0;
update bkp_column_reference set num_after = (select count(*) from ad_column c  join ad_table t on c.ad_table_id = t.ad_table_id  where c.AD_Reference_ID in (18,19))



-- adicionar manualmente no arquivo a DDL da tabela de backp
---- cria um backup das referências
--create table bkp_column_reference as (select c.ad_column_id, t.tablename, c.columnname, c.ad_reference_id from ad_column c left join ad_table t using (ad_table_id));
---- adiciona uma coluna com o numero de colunas do tipo tabela/tabela direta para comparação de resultado
--alter table bkp_column_reference add column num_before numeric default 0;
--update bkp_column_reference set num_before = (select count(*) from ad_column c  join ad_table t on c.ad_table_id = t.ad_table_id  where c.AD_Reference_ID in (18,19))

-- concatenar o resultado da consulta de Views
select 'update ad_column set ad_reference_id = 30 where ad_column_id = ' || ad_column_id || ';' FROM ad_column
where ad_column_id in (
select c.ad_column_id
 from ad_column c
 join ad_table t on c.ad_table_id = t.ad_table_id
 where isview = 'Y'
  and c.AD_Reference_ID in (18,19)
);

-- concatenar o resultado da consulta de CreatedBy e UpdatedBy
select  'update ad_column set ad_reference_id = 30 where ad_column_id = ' || ad_column_id || ';' FROM ad_column
where ad_column_id in (
select c.ad_column_id
 from ad_column c
 where c.columnname in ('CreatedBy','UpdatedBy')
  and c.AD_Reference_ID in (18,19)
);

-- concatenar o resultado da consulta de BigTables
select  'update ad_column set ad_reference_id = 30 where ad_column_id = ' || ad_column_id || ';' FROM ad_column
where ad_column_id in 
(
select ad_column_id 
from bkp_coltotable
where tablename in
(
select objectname from bkp_bigtables 
)
)
and ad_val_rule_id is null
and lower(columnname) not in ('ad_org_id','user1_id','user2_id','ad_val_rule_id')
;

-- adicionar manualmente no arquivo a DDL da tabela de backp
--alter table bkp_column_reference add column num_after numeric default 0;
--update bkp_column_reference set num_after = (select count(*) from ad_column c  join ad_table t on c.ad_table_id = t.ad_table_id  where c.AD_Reference_ID in (18,19))

-- verificar NÚMERO de linhas por tabela
SELECT schemaname,relname,n_live_tup
 FROM pg_stat_user_tables
 ORDER BY n_live_tup DESC;

-- verificar colunas do tipo Tabela ou Tabela Direta
select c.ad_column_id, c.columnname, t.tablename
 from ad_column c
 join ad_table t on c.ad_table_id = t.ad_table_id
 where c.AD_Reference_ID in (18,19)
 order by lower(t.tablename), lower(c.columnname);

-- Dica: ajustar primeiro referência de colunas para tabelas com maior número de linhas. A consulta a seguir mostra a contagem de linhas (entradas):
SELECT
 relname AS objectname,
 relkind AS objecttype,
 reltuples AS entries, pg_size_pretty(relpages::bigint*8*1024) AS size
 FROM pg_class
 WHERE relpages >= 8
 ORDER BY entries DESC;

-- a query a seguir irá ajudar na criação dos índices. Ela exibira quais validações dinamicas existem para as colunas do tipo Tabela e Tabela Direta que ainda existem.
select count(*) as count, c.columnname, r.name as DynValName, r.code as validationcode,
(select array_to_string(array(
select t.tablename
from ad_table t where t.ad_table_id in 
(
select xc.ad_table_id 
from ad_column xc 
where xc.columnname = c.columnname
and xc.ad_val_rule_id = c.ad_val_rule_id
and xc.AD_Reference_ID in (18,19)
)
order by lower (t.tablename)
),', ')
) as RefFromTables
from ad_column c
join AD_Val_Rule r on c.ad_val_rule_id = r.ad_val_rule_id
where c.AD_Reference_ID in (18,19)
group by c.columnname, r.name, r.code, c.ad_val_rule_id
order by c.columnname;


-- colunas do tipo tabela ou tabela direta, somente leitura ou com regra de somente leitura 1=1 e que não seja sempre atualizaveis
-- e que nao sejam views
select
    w.issotrx, wtrl.name, tbtrl.name, trl."name",  t.tablename, c.name, c.AD_Val_Rule_ID, c.AD_Reference_Value_ID,
    'UPDATE AD_Column SET ad_reference_id = ' || c.ad_reference_id || ' WHERE AD_Column_ID = ' || c.ad_column_id || ';' as backup,
    'UPDATE AD_Column SET ad_reference_id = 30 WHERE AD_Column_ID = ' || c.ad_column_id || ';' as modificado
from
    ad_column c 
left join 
    ad_column_trl trl on trl.ad_column_id = c.ad_column_id and trl.ad_language = 'pt_BR'
left join 
    ad_field f on f.ad_column_id = c.ad_column_id
left join
    ad_tab tb on tb.ad_tab_id = f.ad_tab_id
left join
    ad_tab_trl tbtrl on tbtrl.ad_tab_id = tb.ad_tab_id and tbtrl.ad_language = 'pt_BR'
left join
    ad_window w on w.ad_window_id = tb.ad_window_id
left join
    ad_window_trl wtrl on wtrl.ad_window_id = w.ad_window_id and wtrl.ad_language = 'pt_BR'
left join 
    ad_table t on t.ad_table_id = c.ad_table_id
--where 
    --(t.tablename ilike '%docfiscal%' or t.tablename ilike  '%c_order%' or t.tablename ilike '%c_bpartner%' or t.tablename ilike '%c_invoice%' or t.tablename ilike '%c_payment%' or t.tablename ilike '%m_inout%')
where
    c.ad_reference_id in (19,18)
and
    t.isview = 'N'
and
    (f.isdisplayed = 'Y' or f.isdisplayedgrid = 'Y')
and
    c.isalwaysupdateable = 'N'
and
    w.isactive = 'Y' and (f.isreadonly = 'N') or f.readonlylogic = '1=1')
order by
    wtrl.name, w.issotrx, tb.tablevel , tbtrl.name, t.tablename , c.name

-- colunas do tipo tabela ou tabela direta, somente leitura ou com regra de somente leitura 1=1 e que não seja sempre atualizaveis 
select
    w.issotrx, wtrl.name, tbtrl.name, trl."name",  t.tablename, c.name, c.AD_Val_Rule_ID, c.AD_Reference_Value_ID,
    'UPDATE AD_Column SET ad_reference_id = ' || c.ad_reference_id || ' WHERE AD_Column_ID = ' || c.ad_column_id || ';' as backup,
    'UPDATE AD_Column SET ad_reference_id = 30 WHERE AD_Column_ID = ' || c.ad_column_id || ';' as modificado
from
    ad_column c 
left join 
    ad_column_trl trl on trl.ad_column_id = c.ad_column_id and trl.ad_language = 'pt_BR'
left join 
    ad_field f on f.ad_column_id = c.ad_column_id
left join
    ad_tab tb on tb.ad_tab_id = f.ad_tab_id
left join
    ad_tab_trl tbtrl on tbtrl.ad_tab_id = tb.ad_tab_id and tbtrl.ad_language = 'pt_BR'
left join
    ad_window w on w.ad_window_id = tb.ad_window_id
left join
    ad_window_trl wtrl on wtrl.ad_window_id = w.ad_window_id and wtrl.ad_language = 'pt_BR'
left join 
    ad_table t on t.ad_table_id = c.ad_table_id
--where 
    --(t.tablename ilike '%docfiscal%' or t.tablename ilike  '%c_order%' or t.tablename ilike '%c_bpartner%' or t.tablename ilike '%c_invoice%' or t.tablename ilike '%c_payment%' or t.tablename ilike '%m_inout%')
where
    c.ad_reference_id in (19,18)
and
    t.isview = 'N'
and
    (f.isdisplayed = 'Y' or f.isdisplayedgrid = 'Y')
and
    c.isalwaysupdateable = 'N'
and
    w.isactive = 'Y' and f.isreadonly = 'N' 
order by
    wtrl.name, w.issotrx, tb.tablevel , tbtrl.name, t.tablename , c.name