-- Cria a função verifica EntityType, responsável pela geração da DDL da view utilizada para verificar os tipos de entidade
CREATE OR REPLACE FUNCTION verifica_entitytype()
RETURNS TEXT AS
$BODY$
DECLARE
    r_table RECORD;
    returntxt TEXT;
BEGIN

    returntxt := '';
    FOR r_table IN
        SELECT tablename, 'EntityType' AS columnname
            FROM AD_TABLE a
            WHERE a.isview = 'N'
                AND EXISTS (
                    SELECT ad_column_id
                        FROM AD_COLUMN c
                        WHERE a.ad_table_id = c.ad_table_id
                        AND LOWER (c.columnname) = 'entitytype')
                        AND EXISTS (SELECT 1 FROM pg_tables pt WHERE lower(pt.tablename)=lower(a.TableName) AND pt.schemaname='brerp')
    LOOP

        RAISE NOTICE 'Removing items from table %', r_table.tablename;
        returntxt := returntxt || ' UNION SELECT ''' || r_table.tablename || ''' as TableName, ' || r_table.tablename || '_ID as Record_ID, EntityType FROM ' || r_table.tablename;  

    END LOOP;
    RETURN returntxt;
END;
$BODY$
LANGUAGE 'plpgsql' VOLATILE
;
