CREATE OR REPLACE FUNCTION maxno(fieldgroupd_id numeric, tab_id numeric)
         RETURNS void
         LANGUAGE plpgsql
        AS $function$
        DECLARE
            v_max_SeqNo numeric := 0;
            v_max_SeqNoGrid numeric :=0;
        r_table RECORD;
        begin

            RAISE NOTICE 'Inicializa o valor máximo da sequencia de campos (AD_Tab_ID= %)', tab_id; 

            EXECUTE 'SELECT max(SeqNo),max(SeqNoGrid) FROM ad_field WHERE ad_tab_id = '|| tab_id  into v_max_SeqNo, v_max_SeqNoGrid;

            FOR r_table IN 
                SELECT 
                    f.ad_field_id
                FROM 
                    ad_field f 
                LEFT JOIN 
                    ad_tab t ON t.ad_tab_id = f.ad_tab_id
                WHERE 
                    t.entitytype != 'U'
                AND
                    f.entitytype = 'U'
                and
                    f.ad_tab_id = tab_id
                ORDER BY
                    f.seqno
            loop
                v_max_SeqNo := v_max_SeqNo + 10;
                v_max_SeqNoGrid := v_max_SeqNoGrid + 10;

                  RAISE NOTICE 'Atualiza o campo (AD_Field_ID= %, SeqNo = %, SeqNoGrid = % )', r_table.ad_field_id, v_max_SeqNo, v_max_SeqNoGrid;
                    execute 'UPDATE AD_Field SET AD_FieldGroup_ID = ' || fieldgroupd_id || ', SeqNo = ' || v_max_SeqNo || ', SeqNoGrid = ' || v_max_SeqNoGrid || ' WHERE ad_field_id = ' || r_table.ad_field_id;

            END LOOP; 

        END;

        $function$
        ;