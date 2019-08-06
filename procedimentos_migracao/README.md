# Procedimentos Migração

Passo a passo para realizar a aplicação dos scripts de melhorias após a migração

1. Executar o script Verificacao_Tipo_Entidade.sql
2. Executar SELECT verifica_entitytype();
3. A saída do comando será a criação de uma VIEW, executar a criação
4. Para fins de comparação, utilizar o seguinte comando, guardando sua saída:
    * SELECT EntityType, COUNT(*) FROM cof_entitytype_check GROUP BY EntityType ORDER BY EntityType
5. Executar o script Update_Tipo_Entidade.sql , responsável por ajustar os tipos de entidade
6. Executar o passo 4 e comparar os resultados
7. Executar o script Backup_AD_Field.sql , que criará um backup da tabela AD_Field
8. Executar o script Reorganizacao_Campos.sql , responsável pela reordenação dos campos na versão 6, melhoria de UX & UI
9. Executar o script Atualiza_Sequencia_Campos_Personalizado.sql , que criará uma function.
10. Executar o comando abaixo, encontrar o nome da empresa que está sendo migrada e guardar o ID: 
    * SELECT ad_fieldgroup_id, name, created from AD_fieldGroup
11. Executar o comando abaixo, com o ID encontrado no comando anterior: 
    * SELECT maxno(IDEncontrado, f.ad_tab_id) FROM ad_field f left join ad_tab t on t.ad_tab_id = f.ad_tab_id WHERE t.entitytype != 'U' and f.entitytype = 'U' order by f.ad_tab_id;
12. Executar o script ad_reference_update.sql, que irá ajustar as referências de campos de alto volume

Possíveis problemas:
Ao executar o passo 10, existirem 2 registros com o mesmo nome da empresa, nesse caso verificar o criado primeiro e executar os seguintes comandos:
* UPDATE AD_Field SET AD_FieldGroup_ID = ID_Registro_Criado_Primeiro WHERE AD_FieldGroup_ID = ID_Registro_Criado_Depois
* DELETE FROM AD_GroupField WHERE AD_FieldGroup_ID = ID_Registro_Criado_Depois


