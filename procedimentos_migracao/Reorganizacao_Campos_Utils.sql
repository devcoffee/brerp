-- geração do arquivo Reorganizacao_Campos.sql
-- utilizar em uma base pura do BrERP, recomendado na template
select
    'UPDATE AD_Field SET ' ||
    'AD_FieldGroup_ID = ' || (case when AD_FieldGroup_ID is null then 'null' else  '''' || AD_FieldGroup_ID|| '''' end ) || ', ' ||
    'IsDisplayed = ' || (case when IsDisplayed is null then 'null' else  '''' || IsDisplayed|| '''' end ) || ', ' ||
    'IsDisplayedGrid = ' || (case when IsDisplayedGrid is null then 'null' else  '''' || IsDisplayedGrid|| '''' end ) || ', ' ||
    'IsReadOnly = ' || (case when IsReadOnly is null then 'null' else  '''' || IsReadOnly|| '''' end ) ||', ' ||
    'DisplayLogic = ' || (case when DisplayLogic is null then 'null' else   quote_literal(DisplayLogic) end ) ||', ' ||
    'SeqNo = ' || (case when SeqNo is null then 'null' else  '''' || SeqNo||'''' end ) ||', ' ||
    'SeqNoGrid = ' || (case when SeqNoGrid is null then 'null' else  '''' || SeqNoGrid|| '''' end ) ||', ' ||
    'SortNo = ' || (case when SortNo is null then 'null' else  '''' || SortNo|| '''' end ) ||', ' ||
    'IsAdvancedField = ' || (case when IsAdvancedField is null then 'null' else  '''' || IsAdvancedField|| '''' end ) ||', ' ||
    'IsHeading = ' || (case when IsHeading is null then 'null' else  '''' || IsHeading|| '''' end ) ||', ' ||
    'IsDefaultFocus = ' || (case when IsDefaultFocus is null then 'null' else  '''' || IsDefaultFocus|| '''' end ) ||', ' ||
    'IsFieldOnly = ' || (case when IsFieldOnly is null then 'null' else  '''' || IsFieldOnly|| '''' end ) ||', ' ||
    'XPosition = ' || (case when XPosition is null then 'null' else  '''' || XPosition|| '''' end ) ||', ' ||
    'ColumnSpan = ' || (case when ColumnSpan is null then 'null' else  '''' || ColumnSpan|| '''' end ) ||', ' ||
    'NumLines = ' || (case when NumLines is null then 'null' else  '''' || NumLines|| '''' end ) ||', ' ||
    'IsSameLine = ' || (case when IsSameLine is null then 'null' else  '''' || IsSameLine|| '''' end ) ||', ' ||
    'MandatoryLogic = ' || (case when MandatoryLogic is null then 'null' else  quote_literal(MandatoryLogic)  end ) ||', ' ||
    'ReadOnlyLogic = ' || (case when ReadOnlyLogic is null then 'null' else   quote_literal(ReadOnlyLogic)  end ) ||', ' ||
    'VFormat = ' || (case when VFormat is null then 'null' else   quote_literal(VFormat)  end ) ||', ' ||
    'DefaultValue = ' || (case when DefaultValue is null then 'null' else  quote_literal(DefaultValue) end ) ||', ' ||
    'IsSelectionColumn = ' || (case when IsSelectionColumn is null then 'null' else  '''' || IsSelectionColumn|| '''' end ) ||', ' ||
    'IsAllowCopy = ' || (case when IsAllowCopy is null then 'null' else  '''' || IsAllowCopy|| '''' end ) ||', ' ||
    'IsMandatory = ' || (case when IsMandatory is null then 'null' else  '''' || IsMandatory|| '''' end ) ||', ' ||
    'IsAlwaysUpdateable = ' || (case when IsAlwaysUpdateable is null then 'null' else  '''' || IsAlwaysUpdateable|| '''' end ) ||', ' ||
    'IsUpdateable = ' || (case when IsUpdateable is null then 'null' else  '''' || IsUpdateable|| '''' end ) ||', ' ||
    'AD_Reference_ID = ' || (case when AD_Reference_ID is null then 'null' else  '''' || AD_Reference_ID|| '''' end ) ||', ' ||
    'AD_Reference_Value_ID = ' || (case when AD_Reference_Value_ID is null then 'null' else  '''' || AD_Reference_Value_ID|| '''' end ) ||', ' ||
    'AD_Val_Rule_ID = ' || (case when AD_Val_Rule_ID is null then 'null' else  '''' || AD_Val_Rule_ID|| '''' end ) ||', ' ||
    'AD_Val_Rule_Find_ID = ' || (case when AD_Val_Rule_Find_ID is null then 'null' else  '''' || AD_Val_Rule_Find_ID|| '''' end ) ||', ' ||
    'IsToolbarButton = ' || (case when IsToolbarButton is null then 'null' else  '''' || IsToolbarButton|| '''' end ) ||
    ' WHERE AD_Field_ID = ' || ad_field_id || ';'
from
    ad_field;
    
-- restaura campos personalizados conforme tabela de backup
update ad_field set    (AD_FieldGroup_ID, SeqNo, SeqNoGrid,    SortNo , XPosition) = (select AD_FieldGroup_ID, SeqNo, SeqNoGrid,    SortNo , XPosition from ad_field_backup where ad_field_backup.ad_field_id = ad_field.ad_field_id)
where
ad_field_id in 
    (select 
        f.ad_field_id
    from 
        ad_field f 
    left join ad_tab t on t.ad_tab_id = f.ad_tab_id
    left join ad_window w on w.ad_window_id = t.ad_window_id
    where 
        t.entitytype != 'U'
    and
        f.entitytype = 'U'
    order by
        w.ad_window_id, t.ad_tab_id, f.ad_field_id
);
    
-- verifica campos personalizados "U" em abas que não são personalizadas <> "U" 
select 
    w.name,
    w.entitytype,
    t.name,
    t.entitytype,
    f.name,
    f.entitytype
from 
    ad_field f 
left join ad_tab t on t.ad_tab_id = f.ad_tab_id
left join ad_window w on w.ad_window_id = t.ad_window_id
where 
    t.entitytype != 'U'
and
    f.entitytype = 'U'
order by
    w.ad_window_id, t.ad_tab_id, f.ad_field_id;

