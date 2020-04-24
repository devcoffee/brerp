
create table ad_infocolumn_backup as (
            select
                AD_Reference_ID,
                AD_Reference_Value_ID,
                AD_Val_Rule_ID,
                AD_InfoColumn_ID,
                AD_InfoColumn_UU
            from
                AD_InfoColumn);
               
update ad_infocolumn  set ad_reference_id = 30 where ic.IsQueryCriteria = 'N' AND ic.AD_Reference_ID IN ('18','19');
                
--SELECT iw."name" , ic.entitytype, ic.columnname FROM AD_InfoColumn ic 
--	left join ad_infowindow  iw on iw.ad_infowindow_id  = ic.ad_infowindow_id 
--WHERE ic.IsQueryCriteria = 'N' AND ic.AD_Reference_ID IN ('18','19') order by iw.name, ic.columnname ;


