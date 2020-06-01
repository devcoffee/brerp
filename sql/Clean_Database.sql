-- View: rv_cof_taxes

-- DROP VIEW rv_cof_taxes;

CREATE OR REPLACE VIEW rv_cof_taxes AS 
 SELECT lbr_taxdefinition.ad_client_id,
    lbr_taxdefinition.ad_org_id,
    lbr_taxdefinition.created,
    lbr_taxdefinition.createdby,
    lbr_taxdefinition.updated,
    lbr_taxdefinition.updatedby,
    lbr_taxdefinition.lbr_taxdefinition_id AS record_id,
    'LBR_TaxDefinition'::text AS table_name,
    lbr_taxdefinition.lbr_tax_id,
    'C'::text AS tax_type
   FROM lbr_taxdefinition
UNION
 SELECT lbr_issmatrix.ad_client_id,
    lbr_issmatrix.ad_org_id,
    lbr_issmatrix.created,
    lbr_issmatrix.createdby,
    lbr_issmatrix.updated,
    lbr_issmatrix.updatedby,
    lbr_issmatrix.lbr_issmatrix_id AS record_id,
    'LBR_ISSMatrix'::text AS table_name,
    lbr_issmatrix.lbr_tax_id,
    'C'::text AS tax_type
   FROM lbr_issmatrix
UNION
 SELECT lbr_ncm.ad_client_id,
    lbr_ncm.ad_org_id,
    lbr_ncm.created,
    lbr_ncm.createdby,
    lbr_ncm.updated,
    lbr_ncm.updatedby,
    lbr_ncm.lbr_ncm_id AS record_id,
    'LBR_NCM'::text AS table_name,
    lbr_ncm.lbr_tax_id,
    'C'::text AS tax_type
   FROM lbr_ncm
UNION
 SELECT m_movementline.ad_client_id,
    m_movementline.ad_org_id,
    m_movementline.created,
    m_movementline.createdby,
    m_movementline.updated,
    m_movementline.updatedby,
    m_movementline.m_movementline_id AS record_id,
    'M_MovementLine'::text AS table_name,
    m_movementline.lbr_tax_id,
    'T'::text AS tax_type
   FROM m_movementline
UNION
 SELECT lbr_cfopline.ad_client_id,
    lbr_cfopline.ad_org_id,
    lbr_cfopline.created,
    lbr_cfopline.createdby,
    lbr_cfopline.updated,
    lbr_cfopline.updatedby,
    lbr_cfopline.lbr_cfopline_id AS record_id,
    'LBR_CFOPLine'::text AS table_name,
    lbr_cfopline.lbr_tax_id,
    'C'::text AS tax_type
   FROM lbr_cfopline
UNION
 SELECT test.ad_client_id,
    test.ad_org_id,
    test.created,
    test.createdby,
    test.updated,
    test.updatedby,
    test.test_id AS record_id,
    'Test'::text AS table_name,
    test.lbr_tax_id,
    'C'::text AS tax_type
   FROM test
UNION
 SELECT c_orderline.ad_client_id,
    c_orderline.ad_org_id,
    c_orderline.created,
    c_orderline.createdby,
    c_orderline.updated,
    c_orderline.updatedby,
    c_orderline.c_orderline_id AS record_id,
    'C_OrderLine'::text AS table_name,
    c_orderline.lbr_tax_id,
    'T'::text AS tax_type
   FROM c_orderline
UNION
 SELECT lbr_icmsmatrix.ad_client_id,
    lbr_icmsmatrix.ad_org_id,
    lbr_icmsmatrix.created,
    lbr_icmsmatrix.createdby,
    lbr_icmsmatrix.updated,
    lbr_icmsmatrix.updatedby,
    lbr_icmsmatrix.lbr_icmsmatrix_id AS record_id,
    'LBR_ICMSMatrix'::text AS table_name,
    lbr_icmsmatrix.lbr_tax_id,
    'C'::text AS tax_type
   FROM lbr_icmsmatrix
UNION
 SELECT ad_orginfo.ad_client_id,
    ad_orginfo.ad_org_id,
    ad_orginfo.created,
    ad_orginfo.createdby,
    ad_orginfo.updated,
    ad_orginfo.updatedby,
    ad_orginfo.ad_org_id AS record_id,
    'AD_OrgInfo'::text AS table_name,
    ad_orginfo.lbr_tax_id,
    'C'::text AS tax_type
   FROM ad_orginfo
UNION
 SELECT c_invoiceline.ad_client_id,
    c_invoiceline.ad_org_id,
    c_invoiceline.created,
    c_invoiceline.createdby,
    c_invoiceline.updated,
    c_invoiceline.updatedby,
    c_invoiceline.c_invoiceline_id AS record_id,
    'C_InvoiceLine'::text AS table_name,
    c_invoiceline.lbr_tax_id,
    'T'::text AS tax_type
   FROM c_invoiceline
UNION
 SELECT m_rmaline.ad_client_id,
    m_rmaline.ad_org_id,
    m_rmaline.created,
    m_rmaline.createdby,
    m_rmaline.updated,
    m_rmaline.updatedby,
    m_rmaline.m_rmaline_id AS record_id,
    'M_RMALine'::text AS table_name,
    m_rmaline.lbr_tax_id,
    'T'::text AS tax_type
   FROM m_rmaline;

ALTER TABLE rv_cof_taxes
  OWNER TO brerp;

-- DELETE TRANSACTIONS

-- IDEMPIERE/ADEMPIERE

DELETE FROM AD_ChangeLog;
DELETE FROM C_AllocationLine;
DELETE FROM C_AllocationHDR;
UPDATE C_BankAccount SET CurrentBalance = 0;
DELETE FROM M_CostHistory;
DELETE FROM M_CostDetail;

delete from cof_rh_eventopadrao;
delete from cof_rh_calcrendimento;
delete from cof_rh_ferias;
delete from cof_rh_lancamento;
delete from cof_rh_periodgozo;
delete from cof_rh_reembolsoferias;
delete from cof_rh_rendimento;

delete from cof_rps;
delete from cof_rps_lote;

delete from cof_itemsubstituto;
delete from cof_tratamentopedido;

update m_movementline set cof_orderline_id = null;
delete from a_asset_addition;
DELETE FROM M_MatchInv;
DELETE FROM M_MatchPO;
DELETE FROM C_PaySelectionLine;
DELETE FROM C_PaySelectionCheck;
DELETE FROM C_PaySelection;
UPDATE C_Invoice SET C_CashLine_ID = NULL;
UPDATE C_Order SET C_CashLine_ID = NULL;
DELETE FROM C_CashLine;
DELETE FROM C_Cash;
UPDATE C_Payment SET C_Invoice_ID = NULL, cof_c_controlcheck_id = null;
delete from cof_c_checkallocate  ;
delete from cof_c_controlcheck;
DELETE FROM C_CommissionAmt;
DELETE FROM C_CommissionDetail;
DELETE FROM C_CommissionLine;
DELETE FROM C_CommissionRun;
DELETE FROM C_Commission;
DELETE FROM C_Recurring_Run;
DELETE FROM C_Recurring;
DELETE FROM S_TimeExpenseLine;
DELETE FROM S_TimeExpense;
DELETE FROM C_LandedCostAllocation;
DELETE FROM C_LandedCost;
delete from cof_c_comexinfo;
DELETE FROM C_InvoiceLine;
DELETE FROM C_InvoiceTax;
DELETE FROM C_PaymentAllocate;
DELETE FROM C_BankStatementLine;
DELETE FROM C_BankStatement;
UPDATE C_invoice SET C_Payment_ID = NULL;
UPDATE C_order SET C_Payment_ID = NULL;
DELETE FROM C_DepositBatchLine;
DELETE FROM C_DepositBatch;
delete from cof_titulo;
DELETE FROM C_OrderPaySchedule;
DELETE FROM C_PaymentTransaction;
DELETE FROM C_Payment;
DELETE FROM C_PaymentBatch;
UPDATE M_InOutLine SET C_OrderLine_ID = NULL, M_RMALine_ID = NULL;
UPDATE M_InOut SET C_Order_ID = NULL, C_Invoice_ID = NULL, M_RMA_ID = NULL;
UPDATE C_Invoice SET M_RMA_ID = NULL;
UPDATE R_Request SET M_RMA_ID = NULL;
delete from cof_packinglist_line;
delete from cof_packinglist;
DELETE FROM M_RMATax;
DELETE FROM M_RMALine;
DELETE FROM M_RMA;
DELETE FROM C_Invoice;
DELETE FROM PP_MRP;
DELETE FROM M_RequisitionLine;
DELETE FROM M_Requisition;
UPDATE PP_Order SET C_OrderLine_ID = NULL;
DELETE FROM C_OrderLine;
DELETE FROM C_ordertax;
UPDATE R_Request SET C_order_ID = NULL, M_Inout_ID = NULL;
UPDATE R_Requestaction SET C_order_ID = NULL, M_Inout_ID = NULL;
DELETE FROM C_order;
DELETE FROM fact_reconciliation;
DELETE FROM fact_acct;
DELETE FROM fact_acct_summary;
DELETE FROM GL_journalbatch;
DELETE FROM GL_journal; 
DELETE FROM GL_journalline; 
--DELETE FROM M_Storage;  -- use this for ADempiere
DELETE FROM M_Storageonhand;
DELETE FROM M_Storagereservation;
DELETE FROM M_Transaction;
DELETE FROM M_Packageline;
DELETE FROM m_packagemps;
DELETE FROM M_Package;
-- START BRERP

UPDATE LBR_DocFiscal_Line SET M_InOutLine_ID = NULL;
-- DELETE FROM AD_RecentItem;
DELETE FROM AD_Attachment WHERE AD_Table_ID IN ('1120289', '1100001', '1120247', '1120296', '1100000', '1501016', '1500940', '1120310', '1120313' , '1500283');

-- END BRERP
DELETE FROM M_Inoutline; 
DELETE FROM M_Inout;
DELETE FROM M_InoutConfirm; 
DELETE FROM M_InoutLineConfirm; 
DELETE FROM M_InoutLineMA; 
DELETE FROM M_InventoryLine; 
DELETE FROM M_Inventory;
DELETE FROM M_InventoryLineMA; 
DELETE FROM M_MovementLine; 
DELETE FROM M_Movement; 
DELETE FROM M_MovementConfirm; 
DELETE FROM M_MovementLineConfirm; 
DELETE FROM M_MovementLineMA; 
DELETE FROM M_Production;
DELETE FROM M_ProductionPlan; 
delete from cof_pp_consumomateriaprima;
DELETE FROM M_ProductionLine; 
DELETE FROM C_DunningRun; 
DELETE FROM C_DunningRunLine; 
DELETE FROM C_DunningRunEntry; 
DELETE FROM AD_WF_EventAudit;
DELETE FROM AD_WF_Process;
UPDATE M_Cost SET CurrentQty=0, CumulatedAMT=0, CumulatedQty=0, CurrentCostPrice=0;
UPDATE C_BPartner SET ActualLifetimeValue=0, SO_CreditUsed=0, TotalOpenBalance=0;
DELETE FROM R_RequestUpdates;
DELETE FROM R_RequestUPDATE;
DELETE FROM R_RequestAction;
DELETE FROM R_Request;
DELETE FROM pp_cost_collectorma;
DELETE FROM PP_Order_NodeNext;
DELETE FROM PP_Order_Node_TRL;
DELETE FROM PP_Order_WorkFlow_TRL;
DELETE FROM PP_Order_BOMLine_TRL;
DELETE FROM PP_Order_BOM_TRL;
UPDATE PP_Cost_Collector SET PP_Order_BOMLine_ID = NULL;
DELETE FROM PP_Order_BOMLine;
DELETE FROM PP_Order_BOM;
DELETE FROM PP_Cost_Collector;
UPDATE PP_Order_Workflow SET PP_Order_Node_ID = NULL; 
DELETE FROM PP_Order_Node;
DELETE FROM PP_Order_Workflow;
DELETE FROM PP_Order_Cost;
DELETE FROM PP_Order;
DELETE FROM DD_OrderLine;
DELETE FROM DD_Order;
DELETE FROM T_Replenish;
DELETE FROM I_Order;
DELETE FROM I_Invoice;
DELETE FROM I_Payment;
DELETE FROM I_Inventory;
DELETE FROM I_GLJournal;
DELETE FROM M_DistributionRunLine;
DELETE FROM C_RFQLine;
DELETE FROM C_ProjectLine WHERE C_Project_ID NOT IN (SELECT C_Project_ID FROM C_AcctSchema_Element);
DELETE FROM C_Project WHERE C_Project_ID NOT IN (SELECT C_Project_ID FROM C_AcctSchema_Element);

-- TO DELETE PROJECTS TOO
delete from c_acctschema_element where c_project_id  = 100;
DELETE FROM C_Project;
DELETE FROM C_Project_Acct;
DELETE FROM C_ProjectIssue;
DELETE FROM C_ProjectIssueMA;
DELETE FROM C_ProjectLine;
DELETE FROM C_ProjectPhase;
DELETE FROM C_ProjectTask;



delete from cof_labelentry;
delete from cof_label;
delete from cof_pp_gestaomp;
delete from cof_pp_planomestreprodline;
delete from cof_pp_planomestreprod;

-- BRERP ( COF_ LBR_ )
-- DELETE LBR_EventoNFe
DELETE FROM LBR_EventoNFe;

-- DELETE COF_DocFiscal_Inut
DELETE FROM COF_DocFiscal_Inut;

-- DELETE LBR_InutilizacaoNFe
DELETE FROM LBR_InutilizacaoNFe;

delete from cof_trxestoqueprevisto;
delete from cof_estoqueprevisto;
delete from cof_ajusteestoqueprvstline;
delete from cof_ajusteestoqueprevisto;
DELETE FROM LBR_DocFiscal;
DELETE FROM LBR_DocFiscal_Line;
DELETE FROM LBR_NFeLot;
DELETE FROM COF_C_CheckAllocate;
DELETE FROM COF_C_ControlCheck;
DELETE FROM COF_PackingList;
DELETE FROM COF_PackingList_Line;
DELETE FROM COF_C_Titulo_Audit;
DELETE FROM COF_Titulo;
DELETE FROM COF_CreditAnalysis  ;
DELETE FROM lbr_docfiscal_cobr_dup;
delete from lbr_docfiscal_line_di_adi;
delete from lbr_docfiscal_line_di;
delete from lbr_di;
delete from COF_C_DIAdi;
delete from lbr_de;

DELETE from lbr_docfiscal_detpag;
DELETE FROM cof_c_taxdetermination_line ;
DELETE FROM cof_c_taxdetermination_hdr  ;

delete from c_invoicepayschedule;
delete from c_orderpayschedule;



-- OTHER CORE TABLES
DELETE FROM AD_Note;

drop view rv_cof_taxes;
create or replace view rv_cof_taxes as
SELECT AD_Client_ID, AD_Org_ID, Created, CreatedBy, Updated, UpdatedBy, LBR_TaxDefinition_ID as Record_ID, 'LBR_TaxDefinition' as table_name, LBR_Tax_ID, 'C' as tax_type FROM LBR_TaxDefinition
 UNION
SELECT AD_Client_ID, AD_Org_ID, Created, CreatedBy, Updated, UpdatedBy, LBR_ISSMatrix_ID, 'LBR_ISSMatrix', LBR_Tax_ID, 'C' as tax_type FROM LBR_ISSMatrix
 UNION
SELECT AD_Client_ID, AD_Org_ID, Created, CreatedBy, Updated, UpdatedBy, LBR_NCM_ID, 'LBR_NCM', LBR_Tax_ID, 'C' as tax_type FROM LBR_NCM
 UNION
SELECT AD_Client_ID, AD_Org_ID, Created, CreatedBy, Updated, UpdatedBy, M_MovementLine_ID, 'M_MovementLine', LBR_Tax_ID, 'T' as tax_type FROM M_MovementLine
-- UNION
--SELECT AD_Client_ID, AD_Org_ID, Created, CreatedBy, Updated, UpdatedBy, LBR_TaxLine_ID, 'LBR_TaxLine', LBR_Tax_ID FROM LBR_TaxLine
 UNION
SELECT AD_Client_ID, AD_Org_ID, Created, CreatedBy, Updated, UpdatedBy, LBR_CFOPLine_ID, 'LBR_CFOPLine', LBR_Tax_ID, 'C' as tax_type FROM LBR_CFOPLine
 UNION
SELECT AD_Client_ID, AD_Org_ID, Created, CreatedBy, Updated, UpdatedBy, Test_ID, 'Test', LBR_Tax_ID, 'C' as tax_type FROM Test
 UNION
SELECT AD_Client_ID, AD_Org_ID, Created, CreatedBy, Updated, UpdatedBy, C_OrderLine_ID, 'C_OrderLine', LBR_Tax_ID, 'T' as tax_type FROM C_OrderLine
 UNION
SELECT AD_Client_ID, AD_Org_ID, Created, CreatedBy, Updated, UpdatedBy, LBR_ICMSMatrix_ID, 'LBR_ICMSMatrix', LBR_Tax_ID, 'C' as tax_type FROM LBR_ICMSMatrix
 UNION
--SELECT AD_Client_ID, AD_Org_ID, Created, CreatedBy, Updated, UpdatedBy, LBR_Tax_ID, 'LBR_Tax', LBR_Tax_ID FROM LBR_Tax
-- UNION
SELECT AD_Client_ID, AD_Org_ID, Created, CreatedBy, Updated, UpdatedBy, AD_Org_ID, 'AD_OrgInfo', LBR_Tax_ID, 'C' as tax_type FROM AD_OrgInfo
 UNION
SELECT AD_Client_ID, AD_Org_ID, Created, CreatedBy, Updated, UpdatedBy, C_InvoiceLine_ID, 'C_InvoiceLine', LBR_Tax_ID, 'T' as tax_type FROM C_InvoiceLine
 UNION
SELECT AD_Client_ID, AD_Org_ID, Created, CreatedBy, Updated, UpdatedBy, M_RMALine_ID, 'M_RMALine', LBR_Tax_ID, 'T' as tax_type FROM M_RMALine;

--select * from lbr_tax where lbr_tax_id in (select rvt.lbr_tax_id from rv_cof_taxes rvt where rvt.tax_type  ='T');
DELETE FROM lbr_tax t WHERE NOT EXISTS (SELECT 1 FROM rv_cof_taxes rvt WHERE t.lbr_tax_id = rvt.lbr_tax_id);
DELETE FROM LBR_Tax t WHERE LBR_Tax_ID IN (SELECT rvt.LBR_Tax_ID FROM rv_cof_taxes rvt WHERE rvt.tax_type  ='T');
-- limpa linhas de imposto brasileiro
delete from lbr_taxline where lbr_tax_id > (select max(lbr_tax_id) from lbr_tax);


-- CLIENT ( Z_)

-- descomentar quando for limpar produtos da base, e alterar os ID
delete from t_itensaproduzir;
delete from t_itensnaovendidosaclientes;
delete from cof_fciline;
delete from cof_fci;
delete from cof_fci_prod;
delete from cof_nve_product;

delete from mp_prognosis;
delete from mp_ot_task;
delete from mp_ot_resource;
delete from mp_ot_request;
delete from mp_ot;
delete from mp_maintain_resource;
delete from mp_maintain_task;
delete from mp_maintain;
delete from mp_assetmeter_log;
delete from mp_assetmeter;
delete from a_asset_group_acct;
delete from a_depreciation;
delete from a_depreciation_workfile;
delete from a_asset_product;
delete from a_asset_change_amt;
delete from a_asset_change;
delete from a_asset_disposed;
delete from a_depreciation_exp;
delete from a_asset;

delete from cof_osservico;;
delete from cof_osproduto;
delete from cof_osapontamentos;
delete from cof_ordemservico;

delete from cof_c_markup;
delete from c_poskey;
delete from cof_pp_roteirodetalhe;
delete from cof_pp_roteiroprod;


delete from c_uom_conversion where m_product_id not in (1000000);
 delete from m_cost where m_product_id  not in (1000000);
 delete from cof_c_pricechange where m_product_id  not in (1000000);
delete from c_acctschema_element where m_product_id > 0 and m_product_id != 1000000;
 delete from m_product where m_product_id  not in (1000000)

-- descomentar quando quiser limpar despesas

delete from ad_session ;
delete from ad_pinstance_log  ;
delete from ad_pinstance_para  ;
delete from ad_pinstance  ;

delete from AD_Issue;
delete from AD_AlertProcessorLog;
delete from AD_SchedulerLog;
delete from AD_PInstance_Para;
delete from R_RequestProcessorLog;
delete from C_AcctProcessorLog;
delete from ad_changelog;
-- ajusta o storage provider
UPDATE AD_StorageProvider SET Folder = '/home/brerp/Attachments_BrERP' WHERE AD_StorageProvider_ID=1000000;
-- exclui parceiros de negócios, mantendo "Padrão", "cafeUser" e "cafeAdmin"
delete from cof_retentionconfig;
delete from c_validcombination where c_bpartner_id is not null and c_bpartner_id not in (1000000);
delete from cof_driver;
delete from c_contactactivity;
delete from c_opportunity;

delete from ad_userpreference where ad_user_id in (select ad_user_id from ad_user where C_BPartner_ID > 1000002);
delete from ad_preference where ad_user_id in (select ad_user_id from ad_user where C_BPartner_ID > 1000002);
delete from ad_password_history where ad_user_id in (select ad_user_id from ad_user where C_BPartner_ID > 1000002);
delete from ad_wf_node where ad_wf_node_id = 1500274;
delete from ad_wf_responsible where ad_wf_responsible_id=1500086;
delete from ad_wf_responsible where ad_user_id in (select ad_user_id from ad_user where  C_BPartner_ID > 1000002);
delete from pa_dashboardpreference where ad_user_id in (select ad_user_id from ad_user where  C_BPartner_ID > 1000002);
delete from ad_user_orgaccess where ad_user_id in (select ad_user_id from ad_user where  C_BPartner_ID > 1000002);
update cof_c_bankintegration set createdby = 100, updatedby=100, ad_user_id = 100;
update cof_c_bankoccurrence set createdby = 100, updatedby=100;
update cof_c_cnabconfig set createdby = 100, updatedby=100;
update cof_c_cnabconfig_line set createdby = 100, updatedby=100;
update m_pricelist_trl set createdby = 100, updatedby=100;
update m_pricelist_version_trl set createdby = 100, updatedby=100;
update m_product_category_trl set createdby = 100, updatedby=100;
update cof_csc set createdby = 100, updatedby=100;


update c_validcombination set c_salesregion_id = null where  c_salesregion_id > 1000000;
DELETE FROM c_salesregion WHERE c_salesregion_id  > 1000000;
DELETE from m_shipper;
delete from m_product_po;
delete from cof_c_dossier;

DELETE FROM C_BPartner WHERE C_BPartner_ID > 1000002;
-- exclui o cadastro de produto deixando somente o "Padrão"
DELETE FROM M_Cost WHERE M_Product_ID > 1000000;
DELETE FROM M_Product WHERE M_Product_ID > 1000000;
-- exclui conjuntos de atributo e instancias da mundo cáfé
DELETE FROM M_AttributeUse;
DELETE from m_attributeinstance;
DELETE from m_attribute;
DELETE from m_attributesetinstance  WHERE m_attributeset_id > 0;
DELETE from m_attributeset  WHERE m_attributeset_id > 0;

-- -- define o nome da empresa
 UPDATE AD_Client SET Value = 'ForceCar', Name = 'ForceCar' WHERE AD_Client_ID=1000000;
 -- atualiza PN e Usuarios padrão
 UPDATE C_BPartner SET Value = 'forcecaradmin', Name = 'forcecarAdmin' WHERE C_BPartner_ID=1000002;
 UPDATE AD_User SET Value = 'forcecarAdmin', NAME = 'forcecarAdmin', Description = 'forcecarAdmin' , email = 'admin@forcecar.com.br', password = '061118*force' WHERE AD_User_ID=1000000;
 UPDATE C_BPartner SET Value = 'forcecaruser', Name = 'forcecarUser' WHERE C_BPartner_ID=1000001;
 UPDATE AD_User SET Value = 'forcecarUser', NAME = 'forcecarUser', Description = 'forcecarUser' , email = 'user@forcecar.com.br', password = 'force*0611' WHERE AD_User_ID=1000001;
 -- define perfis de acesso
 UPDATE  AD_Role SET Name = 'ForceCar Admin' WHERE AD_Role_ID=1000000;
 UPDATE  AD_Role SET Name = 'ForceCar User' WHERE AD_Role_ID=1000001;
 -- cria calendários
 UPDATE C_Calendar SET Name = 'ForceCar - Calendário' WHERE C_Calendar_ID=1000000;
 -- atualiza nomenclatura das arvores
 UPDATE AD_Tree SET Name = REPLACE(Name,'Mundo do Café S/A','ForceCar');
 -- esquema contábil "Fatos Contábeis Mundo Café"
  UPDATE C_AcctSchema SET Name = 'Fatos Contábeis ForceCar' WHERE C_AcctSchema_ID=1000001;
 -- tipo de custo "Mundo do Café S/A UN/35 Brazilian Real"
  UPDATE M_CostType SET Name = REPLACE(Name,'Mundo do Café S/A','ForceCar') WHERE M_CostType_ID=1000000;
  -- plano de contas  "Mundo do Café S/A Conta"
  UPDATE C_Element SET Name = REPLACE(Name,'Mundo do Café S/A','ForceCar') WHERE C_Element_ID=1000000;
  -- processador de contabilidade "Mundo do Café S/A - Processador de Contabilidade"
  UPDATE C_AcctProcessor SET Name = REPLACE(Name,'Mundo do Café S/A','ForceCar') WHERE  C_AcctProcessor_ID=1000000;
  -- processador de solicitaçoes "Mundo do Café S/A - Processador de Solicitação"
  UPDATE R_RequestProcessor SET Name = REPLACE(Name,'Mundo do Café S/A','ForceCar') WHERE  R_RequestProcessor_ID=1000000;
 -- ajusta detalhes da instância
  UPDATE AD_System SET Name = 'BrERP', SystemStatus='P', ProfileInfo = 'ForceCar|SYSTEM|', CustomPrefix = 'Z_', cof_customizationproject = 'forcecar' WHERE AD_System_ID=0 ;
 
 -- garante que a tabela de erros esteja limpa
 delete from AD_Issue;
 DELETE FROM i_elementvalue;


-- remove os dashboards (graficos)
delete from ad_chartdatasource where  ad_chart_id > 1000000 and ad_chart_id not in (1500013, 1500079, 1500080, 1500081) ;
delete from pa_dashboardcontent_trl where pa_dashboardcontent_id in ( select pa_dashboardcontent_id from pa_dashboardcontent where ad_chart_id  > 1000000 and ad_chart_id not in (1500013, 1500079, 1500080, 1500081)  );
delete from pa_dashboardpreference where pa_dashboardcontent_id in ( select pa_dashboardcontent_id from pa_dashboardcontent where ad_chart_id  > 1000000 and ad_chart_id not in (1500013, 1500079, 1500080, 1500081) );
delete from pa_dashboardcontent where ad_chart_id > 1000000 and ad_chart_id not in (1500013, 1500079, 1500080, 1500081) ;
delete from ad_chart where ad_chart_id > 1000000 and ad_chart_id not in (1500013, 1500079, 1500080, 1500081);

delete from pa_dashboardcontent_trl where pa_dashboardcontent_id in ( select pa_dashboardcontent_id from pa_dashboardcontent where ad_chart_id  = 50002 );
delete from pa_dashboardpreference where pa_dashboardcontent_id in ( select pa_dashboardcontent_id from pa_dashboardcontent where ad_chart_id  = 50002 );
delete from pa_dashboardcontent where ad_chart_id = 50002 ;

delete from pa_dashboardpreference where pa_dashboardcontent_id = 5000011;
delete from pa_dashboardcontent_trl where pa_dashboardcontent_id = 5000011;
delete from pa_dashboardcontent where pa_dashboardcontent_id = 5000011;

delete from pa_dashboardpreference where pa_dashboardcontent_id = 5000010;
delete from pa_dashboardcontent_trl where pa_dashboardcontent_id = 5000010;
delete from PA_DashboardContent where PA_DashboardContent_ID=5000010;

-- remove usuario tradutor
delete from ad_preference where AD_User_ID=1000026;
delete from ad_userpreference where AD_User_ID=1000026;

delete from pa_dashboardpreference where AD_User_ID=1000026;

delete from ad_password_history where AD_User_ID=1000026;

delete from AD_User where AD_User_ID=1000026;

delete from pa_dashboardpreference where ad_role_id = 1000002; 

delete from ad_document_action_access where ad_role_id = 1000002; 
delete from ad_infowindow_access where ad_role_id = 1000002; 

delete from ws_webservicetypeaccess where ad_role_id = 1000002;
delete from ad_role where ad_role_id = 1000002;
