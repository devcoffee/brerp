
--Duplicidade tabela brerp.c_channel
drop index CONCURRENTLY brerp.c_channel_key;
--Duplicidade tabela brerp.c_paymentprocessor
drop index concurrently brerp.c_paymentprocessor_key;
--Duplicidade tabela brerp.c_invoice
drop index concurrently brerp.c_invoice_key;
--Duplicidade tabela brerp.c_tax
drop index concurrently brerp.c_tax_key;
--Duplicidade tabela brerp.ad_fieldgroup
drop index concurrently brerp.ad_fieldgroup_key;
--Duplicidade tabela brerp.gl_journalline
drop index concurrently brerp.gl_journalline_key;
--Duplicidade tabela brerp.ad_note
drop index concurrently brerp.ad_note_key;
--Duplicidade tabela brerp.m_productionline
drop index concurrently brerp.m_productionline_key;
--Duplicidade tabela brerp.c_revenuerecognition
drop index concurrently brerp.c_revenuerecognition_key;

-- script 2
CREATE INDEX CONCURRENTLY idx_ad_userdef_field_ad_field_id ON  brerp.ad_userdef_field (ad_field_id);
CREATE INDEX CONCURRENTLY idx_ad_userdef_field_ad_userdef_tab_id ON  brerp.ad_userdef_field (ad_userdef_tab_id);
CREATE INDEX CONCURRENTLY idx_m_product_bom_m_productbom_id ON  brerp.m_product_bom (m_productbom_id);
CREATE INDEX CONCURRENTLY idx_m_product_bom_m_product_id ON  brerp.m_product_bom (m_product_id);
CREATE INDEX CONCURRENTLY idx_ad_table_ad_window_id ON  brerp.ad_table (ad_window_id);
CREATE INDEX CONCURRENTLY idx_cof_c_controlcheck_c_payment_id ON  brerp.cof_c_controlcheck (c_payment_id);
CREATE INDEX CONCURRENTLY idx_ad_user_c_bpartner_id ON  brerp.ad_user (c_bpartner_id);
CREATE INDEX CONCURRENTLY idx_ad_user_salesrep_id ON  brerp.ad_user (salesrep_id);
CREATE INDEX CONCURRENTLY idx_ad_user_supervisor_id ON  brerp.ad_user (supervisor_id);
CREATE INDEX CONCURRENTLY idx_ad_wf_nodenext_ad_wf_next_id ON  brerp.ad_wf_nodenext (ad_wf_next_id);
CREATE INDEX CONCURRENTLY idx_ad_wf_nodenext_ad_wf_node_id ON  brerp.ad_wf_nodenext (ad_wf_node_id);
CREATE INDEX CONCURRENTLY idx_gl_journalline_c_validcombination_id ON  brerp.gl_journalline (c_validcombination_id);
CREATE INDEX CONCURRENTLY idx_c_invoiceline_m_inoutline_id ON  brerp.c_invoiceline (m_inoutline_id);
CREATE INDEX CONCURRENTLY idx_c_invoiceline_c_campaign_id ON  brerp.c_invoiceline (c_campaign_id);
CREATE INDEX CONCURRENTLY idx_m_cost_m_product_id ON  brerp.m_cost (m_product_id);
CREATE INDEX CONCURRENTLY idx_c_dunningrunline_c_dunningrunentry_id ON  brerp.c_dunningrunline (c_dunningrunentry_id);
CREATE INDEX CONCURRENTLY idx_lbr_docfiscal_line_m_inoutline_id ON  brerp.lbr_docfiscal_line (m_inoutline_id);
CREATE INDEX CONCURRENTLY idx_lbr_docfiscal_line_lbr_docfiscal_id ON  brerp.lbr_docfiscal_line (lbr_docfiscal_id);
CREATE INDEX CONCURRENTLY idx_ad_preference_ad_window_id ON  brerp.ad_preference (ad_window_id);
CREATE INDEX CONCURRENTLY idx_c_payment_c_invoicepayschedule_id ON  brerp.c_payment (c_invoicepayschedule_id);
CREATE INDEX CONCURRENTLY idx_c_payment_c_invoice_id ON  brerp.c_payment (c_invoice_id);
CREATE INDEX CONCURRENTLY idx_c_payment_reversal_id ON  brerp.c_payment (reversal_id);
CREATE INDEX CONCURRENTLY idx_c_payment_c_activity_id ON  brerp.c_payment (c_activity_id);
CREATE INDEX CONCURRENTLY idx_m_costdetail_m_inoutline_id ON  brerp.m_costdetail (m_inoutline_id);
CREATE INDEX CONCURRENTLY idx_m_costdetail_m_inventoryline_id ON  brerp.m_costdetail (m_inventoryline_id);
CREATE INDEX CONCURRENTLY idx_m_costdetail_m_productionline_id ON  brerp.m_costdetail (m_productionline_id);
CREATE INDEX CONCURRENTLY idx_m_costdetail_c_invoiceline_id ON  brerp.m_costdetail (c_invoiceline_id);
CREATE INDEX CONCURRENTLY idx_m_costdetail_c_orderline_id ON  brerp.m_costdetail (c_orderline_id);
CREATE INDEX CONCURRENTLY idx_m_costdetail_m_matchinv_id ON  brerp.m_costdetail (m_matchinv_id);
CREATE INDEX CONCURRENTLY idx_c_charge_trl_c_charge_id ON  brerp.c_charge_trl (c_charge_id);
CREATE INDEX CONCURRENTLY idx_c_order_c_payment_id ON  brerp.c_order (c_payment_id);
CREATE INDEX CONCURRENTLY idx_c_charge_c_bpartner_id ON  brerp.c_charge (c_bpartner_id);
CREATE INDEX CONCURRENTLY idx_cof_titulo_c_order_id ON  brerp.cof_titulo (c_order_id);
CREATE INDEX CONCURRENTLY idx_lbr_cfopline_lbr_cfop_id ON  brerp.lbr_cfopline (lbr_cfop_id);
CREATE INDEX CONCURRENTLY idx_ad_field_ad_column_id ON  brerp.ad_field (ad_column_id);
CREATE INDEX CONCURRENTLY idx_ad_field_ad_val_rule_id ON  brerp.ad_field (ad_val_rule_id);
CREATE INDEX CONCURRENTLY idx_c_allocationline_c_allocationhdr_id ON  brerp.c_allocationline (c_allocationhdr_id);
CREATE INDEX CONCURRENTLY idx_c_allocationline_c_order_id ON  brerp.c_allocationline (c_order_id);
CREATE INDEX CONCURRENTLY idx_c_invoice_c_payment_id ON  brerp.c_invoice (c_payment_id);
CREATE INDEX CONCURRENTLY idx_c_invoice_lbr_docfiscal_id ON  brerp.c_invoice (lbr_docfiscal_id);
CREATE INDEX CONCURRENTLY idx_c_invoice_reversal_id ON  brerp.c_invoice (reversal_id);
CREATE INDEX CONCURRENTLY idx_c_invoice_c_campaign_id ON  brerp.c_invoice (c_campaign_id);
CREATE INDEX CONCURRENTLY idx_m_inout_reversal_id ON  brerp.m_inout (reversal_id);
CREATE INDEX CONCURRENTLY idx_ad_infocolumn_ad_element_id ON  brerp.ad_infocolumn (ad_element_id);
CREATE INDEX CONCURRENTLY idx_ad_infocolumn_ad_reference_value_id ON  brerp.ad_infocolumn (ad_reference_value_id);
CREATE INDEX CONCURRENTLY idx_c_invoicetax_c_invoice_id ON  brerp.c_invoicetax (c_invoice_id);
CREATE INDEX CONCURRENTLY idx_m_inventory_reversal_id ON  brerp.m_inventory (reversal_id);
CREATE INDEX CONCURRENTLY idx_c_allocationhdr_reversal_id ON  brerp.c_allocationhdr (reversal_id);
CREATE INDEX CONCURRENTLY idx_m_movement_reversal_id ON  brerp.m_movement (reversal_id);
CREATE INDEX CONCURRENTLY idx_c_payschedule_c_paymentterm_id ON  brerp.c_payschedule (c_paymentterm_id);
CREATE INDEX CONCURRENTLY idx_m_productionline_m_production_id ON  brerp.m_productionline (m_production_id);
CREATE INDEX CONCURRENTLY idx_ad_column_ad_element_id ON  brerp.ad_column (ad_element_id);
CREATE INDEX CONCURRENTLY idx_ad_column_ad_chart_id ON  brerp.ad_column (ad_chart_id);
CREATE INDEX CONCURRENTLY idx_gl_journal_reversal_id ON  brerp.gl_journal (reversal_id);
CREATE INDEX CONCURRENTLY idx_ad_ref_table_ad_display ON  brerp.ad_ref_table (ad_display);
CREATE INDEX CONCURRENTLY idx_ad_ref_table_ad_key ON  brerp.ad_ref_table (ad_key);
CREATE INDEX CONCURRENTLY idx_ad_ref_table_ad_table_id ON  brerp.ad_ref_table (ad_table_id);
CREATE INDEX CONCURRENTLY idx_c_orderpayschedule_c_order_id ON  brerp.c_orderpayschedule (c_order_id);
CREATE INDEX CONCURRENTLY idx_m_inoutline_c_orderline_id ON  brerp.m_inoutline (c_orderline_id);
CREATE INDEX CONCURRENTLY idx_m_inoutline_reversalline_id ON  brerp.m_inoutline (reversalline_id);
CREATE INDEX CONCURRENTLY idx_ad_process_ad_reportview_id ON  brerp.ad_process (ad_reportview_id);
CREATE INDEX CONCURRENTLY idx_ad_process_ad_workflow_id ON  brerp.ad_process (ad_workflow_id);
CREATE INDEX CONCURRENTLY idx_ad_process_ad_form_id ON  brerp.ad_process (ad_form_id);
CREATE INDEX CONCURRENTLY idx_ad_process_ad_printformat_id ON  brerp.ad_process (ad_printformat_id);
CREATE INDEX CONCURRENTLY idx_m_production_m_product_id ON  brerp.m_production (m_product_id);
CREATE INDEX CONCURRENTLY idx_m_production_reversal_id ON  brerp.m_production (reversal_id);
CREATE INDEX CONCURRENTLY idx_cof_packinglist_line_c_order_id ON  brerp.cof_packinglist_line (c_order_id);
CREATE INDEX CONCURRENTLY idx_cof_packinglist_line_m_inout_id ON  brerp.cof_packinglist_line (m_inout_id);
CREATE INDEX CONCURRENTLY idx_cof_packinglist_line_lbr_docfiscal_id ON  brerp.cof_packinglist_line (lbr_docfiscal_id);
CREATE INDEX CONCURRENTLY idx_cof_packinglist_line_cof_c_custody_id ON  brerp.cof_packinglist_line (cof_c_custody_id);
CREATE INDEX CONCURRENTLY idx_m_rmaline_m_inoutline_id ON  brerp.m_rmaline (m_inoutline_id);
CREATE INDEX CONCURRENTLY idx_m_rmaline_m_rma_id ON  brerp.m_rmaline (m_rma_id);
CREATE INDEX CONCURRENTLY idx_c_region_trl_c_region_id ON  brerp.c_region_trl (c_region_id);
CREATE INDEX CONCURRENTLY idx_ad_printformat_ad_reportview_id ON  brerp.ad_printformat (ad_reportview_id);
CREATE INDEX CONCURRENTLY idx_ad_printformat_ad_window_id ON  brerp.ad_printformat (ad_window_id);
CREATE INDEX CONCURRENTLY idx_ad_treebar_ad_user_id ON  brerp.ad_treebar (ad_user_id);
CREATE INDEX CONCURRENTLY idx_ad_reportview_ad_table_id ON  brerp.ad_reportview (ad_table_id);
CREATE INDEX CONCURRENTLY idx_c_commissiondetail_c_invoiceline_id ON  brerp.c_commissiondetail (c_invoiceline_id);
CREATE INDEX CONCURRENTLY idx_c_commissiondetail_c_commissionamt_id ON  brerp.c_commissiondetail (c_commissionamt_id);
CREATE INDEX CONCURRENTLY idx_ad_infowindow_access_ad_infowindow_id ON  brerp.ad_infowindow_access (ad_infowindow_id);
CREATE INDEX CONCURRENTLY idx_m_rma_inout_id ON  brerp.m_rma (inout_id);
CREATE INDEX CONCURRENTLY idx_m_rma_c_bpartner_id ON  brerp.m_rma (c_bpartner_id);
CREATE INDEX CONCURRENTLY idx_m_rma_lbr_docfiscal_id ON  brerp.m_rma (lbr_docfiscal_id);
CREATE INDEX CONCURRENTLY idx_ad_menu_ad_window_id ON  brerp.ad_menu (ad_window_id);
CREATE INDEX CONCURRENTLY idx_ad_menu_ad_process_id ON  brerp.ad_menu (ad_process_id);
CREATE INDEX CONCURRENTLY idx_ad_menu_ad_form_id ON  brerp.ad_menu (ad_form_id);
CREATE INDEX CONCURRENTLY idx_ad_menu_ad_workflow_id ON  brerp.ad_menu (ad_workflow_id);
CREATE INDEX CONCURRENTLY idx_ad_menu_ad_infowindow_id ON  brerp.ad_menu (ad_infowindow_id);
CREATE INDEX CONCURRENTLY idx_ad_menu_ad_task_id ON  brerp.ad_menu (ad_task_id);
CREATE INDEX CONCURRENTLY idx_ad_menu_ad_workbench_id ON  brerp.ad_menu (ad_workbench_id);
CREATE INDEX CONCURRENTLY idx_c_charge_acct_ch_expense_acct ON  brerp.c_charge_acct (ch_expense_acct);
CREATE INDEX CONCURRENTLY idx_c_bpartner_location_c_location_id ON  brerp.c_bpartner_location (c_location_id);
CREATE INDEX CONCURRENTLY idx_m_matchpo_m_inoutline_id ON  brerp.m_matchpo (m_inoutline_id);
CREATE INDEX CONCURRENTLY idx_m_matchpo_c_invoiceline_id ON  brerp.m_matchpo (c_invoiceline_id);
CREATE INDEX CONCURRENTLY idx_m_matchpo_reversal_id ON  brerp.m_matchpo (reversal_id);
CREATE INDEX CONCURRENTLY idx_m_matchpo_m_product_id ON  brerp.m_matchpo (m_product_id);
CREATE INDEX CONCURRENTLY idx_m_movementline_reversalline_id ON  brerp.m_movementline (reversalline_id);
CREATE INDEX CONCURRENTLY idx_c_country_c_currency_id ON  brerp.c_country (c_currency_id);
CREATE INDEX CONCURRENTLY idx_c_country_ad_language ON  brerp.c_country (ad_language);
CREATE INDEX CONCURRENTLY idx_c_commissionrun_cof_invoice_id ON  brerp.c_commissionrun (cof_invoice_id);
CREATE INDEX CONCURRENTLY idx_m_productprice_m_product_id ON  brerp.m_productprice (m_product_id);
CREATE INDEX CONCURRENTLY idx_m_transaction_m_inoutline_id ON  brerp.m_transaction (m_inoutline_id);
CREATE INDEX CONCURRENTLY idx_c_bankstatementline_c_payment_id ON  brerp.c_bankstatementline (c_payment_id);
CREATE INDEX CONCURRENTLY idx_c_bankstatementline_c_invoice_id ON  brerp.c_bankstatementline (c_invoice_id);
CREATE INDEX CONCURRENTLY idx_lbr_docfiscal_detpag_lbr_docfiscal_id ON  brerp.lbr_docfiscal_detpag (lbr_docfiscal_id);
CREATE INDEX CONCURRENTLY idx_lbr_docfiscal_transp_vol_lbr_docfiscal_id ON  brerp.lbr_docfiscal_transp_vol (lbr_docfiscal_id);
CREATE INDEX CONCURRENTLY idx_lbr_docfiscal_cobr_dup_lbr_docfiscal_id ON  brerp.lbr_docfiscal_cobr_dup (lbr_docfiscal_id);
CREATE INDEX CONCURRENTLY idx_c_commissionline_c_bp_group_id ON  brerp.c_commissionline (c_bp_group_id);
CREATE INDEX CONCURRENTLY idx_c_commissionline_m_product_category_id ON  brerp.c_commissionline (m_product_category_id);
CREATE INDEX CONCURRENTLY idx_m_matchinv_m_inoutline_id ON  brerp.m_matchinv (m_inoutline_id);
CREATE INDEX CONCURRENTLY idx_m_matchinv_m_product_id ON  brerp.m_matchinv (m_product_id);
CREATE INDEX CONCURRENTLY idx_m_matchinv_reversal_id ON  brerp.m_matchinv (reversal_id);
CREATE INDEX CONCURRENTLY idx_ad_tab_ad_column_id ON  brerp.ad_tab (ad_column_id);
CREATE INDEX CONCURRENTLY idx_ad_tab_ad_columnsortorder_id ON  brerp.ad_tab (ad_columnsortorder_id);
CREATE INDEX CONCURRENTLY idx_ad_tab_ad_ctxhelp_id ON  brerp.ad_tab (ad_ctxhelp_id);
CREATE INDEX CONCURRENTLY idx_ad_tab_included_tab_id ON  brerp.ad_tab (included_tab_id);
CREATE INDEX CONCURRENTLY idx_ad_wf_node_ad_window_id ON  brerp.ad_wf_node (ad_window_id);
CREATE INDEX CONCURRENTLY idx_ad_wf_node_ad_process_id ON  brerp.ad_wf_node (ad_process_id);
CREATE INDEX CONCURRENTLY idx_ad_wf_node_workflow_id ON  brerp.ad_wf_node (workflow_id);
CREATE INDEX CONCURRENTLY idx_ad_wf_node_ad_column_id ON  brerp.ad_wf_node (ad_column_id);
CREATE INDEX CONCURRENTLY idx_ad_wf_node_ad_wf_responsible_id ON  brerp.ad_wf_node (ad_wf_responsible_id);
CREATE INDEX CONCURRENTLY idx_ad_indexcolumn_ad_column_id ON  brerp.ad_indexcolumn (ad_column_id);
CREATE INDEX CONCURRENTLY idx_ad_indexcolumn_ad_tableindex_id ON  brerp.ad_indexcolumn (ad_tableindex_id);
CREATE INDEX CONCURRENTLY idx_cm_chatentry_cm_chat_id ON  brerp.cm_chatentry (cm_chat_id);
CREATE INDEX CONCURRENTLY idx_cm_chatentry_cm_chatentryparent_id ON  brerp.cm_chatentry (cm_chatentryparent_id);
CREATE INDEX CONCURRENTLY idx_ad_printformatitem_ad_column_id ON  brerp.ad_printformatitem (ad_column_id);
CREATE INDEX CONCURRENTLY idx_ad_process_para_ad_element_id ON  brerp.ad_process_para (ad_element_id);
CREATE INDEX CONCURRENTLY idx_ad_tableindex_ad_table_id ON  brerp.ad_tableindex (ad_table_id);
CREATE INDEX CONCURRENTLY idx_ad_tableindex_ad_message_id ON  brerp.ad_tableindex (ad_message_id);
CREATE INDEX CONCURRENTLY idx_ad_wf_node_trl_ad_wf_node_id ON  brerp.ad_wf_node_trl (ad_wf_node_id);
CREATE INDEX CONCURRENTLY idx_t_itensnaovendidosaclientes_m_product_id ON  brerp.t_itensnaovendidosaclientes (m_product_id);
CREATE INDEX CONCURRENTLY idx_c_bp_vendor_acct_c_bpartner_id ON  brerp.c_bp_vendor_acct (c_bpartner_id);
CREATE INDEX CONCURRENTLY idx_ad_impformat_row_ad_column_id ON  brerp.ad_impformat_row (ad_column_id);
CREATE INDEX CONCURRENTLY idx_ad_replicationtable_ad_table_id ON  brerp.ad_replicationtable (ad_table_id);
CREATE INDEX CONCURRENTLY idx_m_inventoryline_reversalline_id ON  brerp.m_inventoryline (reversalline_id);
CREATE INDEX CONCURRENTLY idx_lbr_taxline_cof_taxstatusdelivery_id ON  brerp.lbr_taxline (cof_taxstatusdelivery_id);
CREATE INDEX CONCURRENTLY idx_m_costhistory_m_costdetail_id ON  brerp.m_costhistory (m_costdetail_id);
CREATE INDEX CONCURRENTLY idx_c_doctype_c_doctypeshipment_id ON  brerp.c_doctype (c_doctypeshipment_id);
CREATE INDEX CONCURRENTLY idx_ad_table_po_window_id ON  brerp.ad_table (po_window_id);
CREATE INDEX CONCURRENTLY idx_cof_c_controlcheck_c_bpartner_id ON  brerp.cof_c_controlcheck (c_bpartner_id);
CREATE INDEX CONCURRENTLY idx_cof_c_controlcheck_c_bpartner_location_id ON  brerp.cof_c_controlcheck (c_bpartner_location_id);
CREATE INDEX CONCURRENTLY idx_c_invoicepayschedule_cof_c_custody_id ON  brerp.c_invoicepayschedule (cof_c_custody_id);
CREATE INDEX CONCURRENTLY idx_c_invoicepayschedule_c_payschedule_id ON  brerp.c_invoicepayschedule (c_payschedule_id);
CREATE INDEX CONCURRENTLY idx_ad_val_rule_entitytype ON  brerp.ad_val_rule (entitytype);
CREATE INDEX CONCURRENTLY idx_ad_fieldgroup_entitytype ON  brerp.ad_fieldgroup (entitytype);
CREATE INDEX CONCURRENTLY idx_ad_user_c_bpartner_location_id ON  brerp.ad_user (c_bpartner_location_id);
CREATE INDEX CONCURRENTLY idx_ad_wf_nodenext_entitytype ON  brerp.ad_wf_nodenext (entitytype);
CREATE INDEX CONCURRENTLY idx_ad_recentitem_ad_role_id ON  brerp.ad_recentitem (ad_role_id);
CREATE INDEX CONCURRENTLY idx_ad_recentitem_ad_user_id ON  brerp.ad_recentitem (ad_user_id);
CREATE INDEX CONCURRENTLY idx_ad_recentitem_ad_table_id ON  brerp.ad_recentitem (ad_table_id);
CREATE INDEX CONCURRENTLY idx_ad_recentitem_ad_tab_id ON  brerp.ad_recentitem (ad_tab_id);
CREATE INDEX CONCURRENTLY idx_ad_recentitem_ad_window_id ON  brerp.ad_recentitem (ad_window_id);
CREATE INDEX CONCURRENTLY idx_gl_journalline_user1_id ON  brerp.gl_journalline (user1_id);
CREATE INDEX CONCURRENTLY idx_gl_journalline_account_id ON  brerp.gl_journalline (account_id);
CREATE INDEX CONCURRENTLY idx_gl_journalline_m_product_id ON  brerp.gl_journalline (m_product_id);
CREATE INDEX CONCURRENTLY idx_gl_journalline_gl_journal_id ON  brerp.gl_journalline (gl_journal_id);
CREATE INDEX CONCURRENTLY idx_gl_journalline_c_bpartner_id ON  brerp.gl_journalline (c_bpartner_id);
CREATE INDEX CONCURRENTLY idx_c_invoiceline_user1_id ON  brerp.c_invoiceline (user1_id);
CREATE INDEX CONCURRENTLY idx_c_invoiceline_c_charge_id ON  brerp.c_invoiceline (c_charge_id);
CREATE INDEX CONCURRENTLY idx_c_invoiceline_m_rmaline_id ON  brerp.c_invoiceline (m_rmaline_id);
CREATE INDEX CONCURRENTLY idx_c_bpartner_m_pricelist_id ON  brerp.c_bpartner (m_pricelist_id);
CREATE INDEX CONCURRENTLY idx_c_bpartner_cof_c_custody_id ON  brerp.c_bpartner (cof_c_custody_id);
CREATE INDEX CONCURRENTLY idx_c_bpartner_c_bp_group_id ON  brerp.c_bpartner (c_bp_group_id);
CREATE INDEX CONCURRENTLY idx_c_bpartner_po_paymentterm_id ON  brerp.c_bpartner (po_paymentterm_id);
CREATE INDEX CONCURRENTLY idx_c_bpartner_c_paymentterm_id ON  brerp.c_bpartner (c_paymentterm_id);
CREATE INDEX CONCURRENTLY idx_c_bpartner_salesrep_id ON  brerp.c_bpartner (salesrep_id);
CREATE INDEX CONCURRENTLY idx_m_product_cof_cest_id ON  brerp.m_product (cof_cest_id);
CREATE INDEX CONCURRENTLY idx_c_dunningrunline_c_payment_id ON  brerp.c_dunningrunline (c_payment_id);
CREATE INDEX CONCURRENTLY idx_c_dunningrunline_c_invoice_id ON  brerp.c_dunningrunline (c_invoice_id);
CREATE INDEX CONCURRENTLY idx_c_dunningrunline_c_invoicepayschedule_id ON  brerp.c_dunningrunline (c_invoicepayschedule_id);
CREATE INDEX CONCURRENTLY idx_lbr_docfiscal_line_lbr_ncm_id ON  brerp.lbr_docfiscal_line (lbr_ncm_id);
CREATE INDEX CONCURRENTLY idx_ad_preference_ad_user_id ON  brerp.ad_preference (ad_user_id);
CREATE INDEX CONCURRENTLY idx_c_payment_c_doctype_id ON  brerp.c_payment (c_doctype_id);
CREATE INDEX CONCURRENTLY idx_c_payment_user1_id ON  brerp.c_payment (user1_id);
CREATE INDEX CONCURRENTLY idx_c_payment_c_charge_id ON  brerp.c_payment (c_charge_id);
CREATE INDEX CONCURRENTLY idx_c_payment_c_order_id ON  brerp.c_payment (c_order_id);
CREATE INDEX CONCURRENTLY idx_ad_wf_activity_ad_table_id ON  brerp.ad_wf_activity (ad_table_id);
CREATE INDEX CONCURRENTLY idx_ad_wf_activity_ad_workflow_id ON  brerp.ad_wf_activity (ad_workflow_id);
CREATE INDEX CONCURRENTLY idx_ad_wf_activity_ad_wf_node_id ON  brerp.ad_wf_activity (ad_wf_node_id);
CREATE INDEX CONCURRENTLY idx_ad_wf_activity_ad_user_id ON  brerp.ad_wf_activity (ad_user_id);
CREATE INDEX CONCURRENTLY idx_c_dunningrunentry_salesrep_id ON  brerp.c_dunningrunentry (salesrep_id);
CREATE INDEX CONCURRENTLY idx_c_dunningrunentry_c_dunningrun_id ON  brerp.c_dunningrunentry (c_dunningrun_id);
CREATE INDEX CONCURRENTLY idx_c_dunningrunentry_ad_user_id ON  brerp.c_dunningrunentry (ad_user_id);
CREATE INDEX CONCURRENTLY idx_c_dunningrunentry_c_bpartner_id ON  brerp.c_dunningrunentry (c_bpartner_id);
CREATE INDEX CONCURRENTLY idx_c_dunningrunentry_c_bpartner_location_id ON  brerp.c_dunningrunentry (c_bpartner_location_id);
CREATE INDEX CONCURRENTLY idx_c_order_m_warehouse_id ON  brerp.c_order (m_warehouse_id);
CREATE INDEX CONCURRENTLY idx_c_order_user1_id ON  brerp.c_order (user1_id);
CREATE INDEX CONCURRENTLY idx_c_order_m_pricelist_id ON  brerp.c_order (m_pricelist_id);
CREATE INDEX CONCURRENTLY idx_c_order_c_doctypetarget_id ON  brerp.c_order (c_doctypetarget_id);
CREATE INDEX CONCURRENTLY idx_c_order_c_doctype_id ON  brerp.c_order (c_doctype_id);
CREATE INDEX CONCURRENTLY idx_c_order_salesrep_id ON  brerp.c_order (salesrep_id);
CREATE INDEX CONCURRENTLY idx_c_order_c_paymentterm_id ON  brerp.c_order (c_paymentterm_id);
CREATE INDEX CONCURRENTLY idx_c_order_cof_payfrom_location_id ON  brerp.c_order (cof_payfrom_location_id);
CREATE INDEX CONCURRENTLY idx_c_order_ad_user_id ON  brerp.c_order (ad_user_id);
CREATE INDEX CONCURRENTLY idx_c_order_bill_user_id ON  brerp.c_order (bill_user_id);
CREATE INDEX CONCURRENTLY idx_c_order_bill_bpartner_id ON  brerp.c_order (bill_bpartner_id);
CREATE INDEX CONCURRENTLY idx_c_order_bill_location_id ON  brerp.c_order (bill_location_id);
CREATE INDEX CONCURRENTLY idx_c_order_c_bpartner_location_id ON  brerp.c_order (c_bpartner_location_id);
CREATE INDEX CONCURRENTLY idx_cof_titulo_createdby ON  brerp.cof_titulo (createdby);
CREATE INDEX CONCURRENTLY idx_cof_titulo_updatedby ON  brerp.cof_titulo (updatedby);
CREATE INDEX CONCURRENTLY idx_cof_titulo_c_bpartner_id ON  brerp.cof_titulo (c_bpartner_id);
CREATE INDEX CONCURRENTLY idx_cof_titulo_c_bpartner_location_id ON  brerp.cof_titulo (c_bpartner_location_id);
CREATE INDEX CONCURRENTLY idx_cof_titulo_lbr_docfiscal_id ON  brerp.cof_titulo (lbr_docfiscal_id);
CREATE INDEX CONCURRENTLY idx_ad_field_ad_reference_id ON  brerp.ad_field (ad_reference_id);
CREATE INDEX CONCURRENTLY idx_ad_field_entitytype ON  brerp.ad_field (entitytype);
CREATE INDEX CONCURRENTLY idx_ad_field_ad_fieldgroup_id ON  brerp.ad_field (ad_fieldgroup_id);
CREATE INDEX CONCURRENTLY idx_ad_note_ad_table_id ON  brerp.ad_note (ad_table_id);
CREATE INDEX CONCURRENTLY idx_ad_note_ad_user_id ON  brerp.ad_note (ad_user_id);
CREATE INDEX CONCURRENTLY idx_c_allocationline_c_charge_id ON  brerp.c_allocationline (c_charge_id);
CREATE INDEX CONCURRENTLY idx_c_allocationline_c_bpartner_id ON  brerp.c_allocationline (c_bpartner_id);
CREATE INDEX CONCURRENTLY idx_c_invoice_m_pricelist_id ON  brerp.c_invoice (m_pricelist_id);
CREATE INDEX CONCURRENTLY idx_c_invoice_cof_c_custody_id ON  brerp.c_invoice (cof_c_custody_id);
CREATE INDEX CONCURRENTLY idx_c_invoice_user1_id ON  brerp.c_invoice (user1_id);
CREATE INDEX CONCURRENTLY idx_c_invoice_c_doctypetarget_id ON  brerp.c_invoice (c_doctypetarget_id);
CREATE INDEX CONCURRENTLY idx_c_invoice_c_doctype_id ON  brerp.c_invoice (c_doctype_id);
CREATE INDEX CONCURRENTLY idx_c_invoice_c_paymentterm_id ON  brerp.c_invoice (c_paymentterm_id);
CREATE INDEX CONCURRENTLY idx_c_invoice_salesrep_id ON  brerp.c_invoice (salesrep_id);
CREATE INDEX CONCURRENTLY idx_c_invoice_m_rma_id ON  brerp.c_invoice (m_rma_id);
CREATE INDEX CONCURRENTLY idx_c_invoice_cof_payfrom_location_id ON  brerp.c_invoice (cof_payfrom_location_id);
CREATE INDEX CONCURRENTLY idx_c_invoice_ad_user_id ON  brerp.c_invoice (ad_user_id);
CREATE INDEX CONCURRENTLY idx_c_invoice_c_bpartner_location_id ON  brerp.c_invoice (c_bpartner_location_id);
CREATE INDEX CONCURRENTLY idx_m_inout_c_doctype_id ON  brerp.m_inout (c_doctype_id);
CREATE INDEX CONCURRENTLY idx_m_inout_m_warehouse_id ON  brerp.m_inout (m_warehouse_id);
CREATE INDEX CONCURRENTLY idx_m_inout_user1_id ON  brerp.m_inout (user1_id);
CREATE INDEX CONCURRENTLY idx_m_inout_salesrep_id ON  brerp.m_inout (salesrep_id);
CREATE INDEX CONCURRENTLY idx_m_inout_m_rma_id ON  brerp.m_inout (m_rma_id);
CREATE INDEX CONCURRENTLY idx_m_inout_ad_user_id ON  brerp.m_inout (ad_user_id);
CREATE INDEX CONCURRENTLY idx_m_inout_c_bpartner_location_id ON  brerp.m_inout (c_bpartner_location_id);
CREATE INDEX CONCURRENTLY idx_fact_acct_m_locator_id ON  brerp.fact_acct (m_locator_id);
CREATE INDEX CONCURRENTLY idx_fact_acct_gl_category_id ON  brerp.fact_acct (gl_category_id);
CREATE INDEX CONCURRENTLY idx_fact_acct_ad_table_id ON  brerp.fact_acct (ad_table_id);
CREATE INDEX CONCURRENTLY idx_fact_acct_user1_id ON  brerp.fact_acct (user1_id);
CREATE INDEX CONCURRENTLY idx_fact_acct_c_period_id ON  brerp.fact_acct (c_period_id);
CREATE INDEX CONCURRENTLY idx_fact_acct_account_id ON  brerp.fact_acct (account_id);
CREATE INDEX CONCURRENTLY idx_fact_acct_c_locfrom_id ON  brerp.fact_acct (c_locfrom_id);
CREATE INDEX CONCURRENTLY idx_fact_acct_m_product_id ON  brerp.fact_acct (m_product_id);
CREATE INDEX CONCURRENTLY idx_fact_acct_c_locto_id ON  brerp.fact_acct (c_locto_id);
CREATE INDEX CONCURRENTLY idx_fact_acct_c_bpartner_id ON  brerp.fact_acct (c_bpartner_id);
CREATE INDEX CONCURRENTLY idx_ad_infocolumn_ad_reference_id ON  brerp.ad_infocolumn (ad_reference_id);
CREATE INDEX CONCURRENTLY idx_ad_infocolumn_ad_val_rule_id ON  brerp.ad_infocolumn (ad_val_rule_id);
CREATE INDEX CONCURRENTLY idx_ad_infocolumn_ad_infowindow_id ON  brerp.ad_infocolumn (ad_infowindow_id);
CREATE INDEX CONCURRENTLY idx_m_inventory_m_warehouse_id ON  brerp.m_inventory (m_warehouse_id);
CREATE INDEX CONCURRENTLY idx_m_inventory_user1_id ON  brerp.m_inventory (user1_id);
CREATE INDEX CONCURRENTLY idx_m_movement_ad_user_id ON  brerp.m_movement (ad_user_id);
CREATE INDEX CONCURRENTLY idx_m_movement_salesrep_id ON  brerp.m_movement (salesrep_id);
CREATE INDEX CONCURRENTLY idx_m_productionline_m_product_id ON  brerp.m_productionline (m_product_id);
CREATE INDEX CONCURRENTLY idx_ad_column_entitytype ON  brerp.ad_column (entitytype);
CREATE INDEX CONCURRENTLY idx_ad_column_ad_reference_id ON  brerp.ad_column (ad_reference_id);
CREATE INDEX CONCURRENTLY idx_ad_column_ad_process_id ON  brerp.ad_column (ad_process_id);
CREATE INDEX CONCURRENTLY idx_ad_column_ad_val_rule_id ON  brerp.ad_column (ad_val_rule_id);
CREATE INDEX CONCURRENTLY idx_ad_column_ad_reference_value_id ON  brerp.ad_column (ad_reference_value_id);
CREATE INDEX CONCURRENTLY idx_c_bankstatement_c_bankaccount_id ON  brerp.c_bankstatement (c_bankaccount_id);
CREATE INDEX CONCURRENTLY idx_gl_journal_c_period_id ON  brerp.gl_journal (c_period_id);
CREATE INDEX CONCURRENTLY idx_ad_ref_table_entitytype ON  brerp.ad_ref_table (entitytype);
CREATE INDEX CONCURRENTLY idx_ad_ref_table_ad_window_id ON  brerp.ad_ref_table (ad_window_id);
CREATE INDEX CONCURRENTLY idx_c_orderpayschedule_c_payschedule_id ON  brerp.c_orderpayschedule (c_payschedule_id);
CREATE INDEX CONCURRENTLY idx_m_inoutline_m_rmaline_id ON  brerp.m_inoutline (m_rmaline_id);
CREATE INDEX CONCURRENTLY idx_ad_pinstance_ad_printformat_id ON  brerp.ad_pinstance (ad_printformat_id);
CREATE INDEX CONCURRENTLY idx_c_city_c_region_id ON  brerp.c_city (c_region_id);
CREATE INDEX CONCURRENTLY idx_ad_process_entitytype ON  brerp.ad_process (entitytype);
CREATE INDEX CONCURRENTLY idx_cof_packinglist_line_cof_packinglist_id ON  brerp.cof_packinglist_line (cof_packinglist_id);
CREATE INDEX CONCURRENTLY idx_cof_packinglist_line_c_bpartner_id ON  brerp.cof_packinglist_line (c_bpartner_id);
CREATE INDEX CONCURRENTLY idx_cof_packinglist_line_c_bpartner_location_id ON  brerp.cof_packinglist_line (c_bpartner_location_id);
CREATE INDEX CONCURRENTLY idx_m_rmaline_m_product_id ON  brerp.m_rmaline (m_product_id);
CREATE INDEX CONCURRENTLY idx_ad_sysconfig_entitytype ON  brerp.ad_sysconfig (entitytype);
CREATE INDEX CONCURRENTLY idx_pa_dashboardpreference_pa_dashboardcontent_id ON  brerp.pa_dashboardpreference (pa_dashboardcontent_id);
CREATE INDEX CONCURRENTLY idx_pa_dashboardpreference_ad_role_id ON  brerp.pa_dashboardpreference (ad_role_id);
CREATE INDEX CONCURRENTLY idx_pa_dashboardpreference_ad_user_id ON  brerp.pa_dashboardpreference (ad_user_id);
CREATE INDEX CONCURRENTLY idx_ad_printformat_ad_printfont_id ON  brerp.ad_printformat (ad_printfont_id);
CREATE INDEX CONCURRENTLY idx_ad_window_ad_image_id ON  brerp.ad_window (ad_image_id);
CREATE INDEX CONCURRENTLY idx_ad_window_entitytype ON  brerp.ad_window (entitytype);
CREATE INDEX CONCURRENTLY idx_ad_reportview_entitytype ON  brerp.ad_reportview (entitytype);
CREATE INDEX CONCURRENTLY idx_m_rma_salesrep_id ON  brerp.m_rma (salesrep_id);
CREATE INDEX CONCURRENTLY idx_ad_menu_entitytype ON  brerp.ad_menu (entitytype);
CREATE INDEX CONCURRENTLY idx_ad_process_access_ad_role_id ON  brerp.ad_process_access (ad_role_id);
CREATE INDEX CONCURRENTLY idx_ad_element_entitytype ON  brerp.ad_element (entitytype);
CREATE INDEX CONCURRENTLY idx_c_orderline_c_bpartner_id ON  brerp.c_orderline (c_bpartner_id);
CREATE INDEX CONCURRENTLY idx_c_orderline_c_bpartner_location_id ON  brerp.c_orderline (c_bpartner_location_id);
CREATE INDEX CONCURRENTLY idx_ad_window_access_ad_role_id ON  brerp.ad_window_access (ad_role_id);
CREATE INDEX CONCURRENTLY idx_ad_form_access_ad_role_id ON  brerp.ad_form_access (ad_role_id);
CREATE INDEX CONCURRENTLY idx_ad_session_ad_role_id ON  brerp.ad_session (ad_role_id);
CREATE INDEX CONCURRENTLY idx_ad_workflow_access_ad_role_id ON  brerp.ad_workflow_access (ad_role_id);
CREATE INDEX CONCURRENTLY idx_c_periodcontrol_c_period_id ON  brerp.c_periodcontrol (c_period_id);
CREATE INDEX CONCURRENTLY idx_c_location_c_region_id ON  brerp.c_location (c_region_id);
CREATE INDEX CONCURRENTLY idx_c_location_c_city_id ON  brerp.c_location (c_city_id);
CREATE INDEX CONCURRENTLY idx_m_movementline_m_locator_id ON  brerp.m_movementline (m_locator_id);
CREATE INDEX CONCURRENTLY idx_m_movementline_m_product_id ON  brerp.m_movementline (m_product_id);
CREATE INDEX CONCURRENTLY idx_c_commissionrun_c_commission_id ON  brerp.c_commissionrun (c_commission_id);
CREATE INDEX CONCURRENTLY idx_m_storageonhand_m_locator_id ON  brerp.m_storageonhand (m_locator_id);
CREATE INDEX CONCURRENTLY idx_m_transaction_m_locator_id ON  brerp.m_transaction (m_locator_id);
CREATE INDEX CONCURRENTLY idx_m_transaction_m_movementline_id ON  brerp.m_transaction (m_movementline_id);
CREATE INDEX CONCURRENTLY idx_m_transaction_m_productionline_id ON  brerp.m_transaction (m_productionline_id);
CREATE INDEX CONCURRENTLY idx_m_transaction_m_inventoryline_id ON  brerp.m_transaction (m_inventoryline_id);
CREATE INDEX CONCURRENTLY idx_c_bankstatementline_c_bpartner_id ON  brerp.c_bankstatementline (c_bpartner_id);
CREATE INDEX CONCURRENTLY idx_c_validcombination_user1_id ON  brerp.c_validcombination (user1_id);
CREATE INDEX CONCURRENTLY idx_c_validcombination_account_id ON  brerp.c_validcombination (account_id);
CREATE INDEX CONCURRENTLY idx_c_validcombination_m_product_id ON  brerp.c_validcombination (m_product_id);
CREATE INDEX CONCURRENTLY idx_c_validcombination_c_bpartner_id ON  brerp.c_validcombination (c_bpartner_id);
CREATE INDEX CONCURRENTLY idx_c_commissionline_m_product_id ON  brerp.c_commissionline (m_product_id);
CREATE INDEX CONCURRENTLY idx_ad_tab_ad_columnsortyesno_id ON  brerp.ad_tab (ad_columnsortyesno_id);
CREATE INDEX CONCURRENTLY idx_ad_tab_parent_column_id ON  brerp.ad_tab (parent_column_id);
CREATE INDEX CONCURRENTLY idx_ad_tab_entitytype ON  brerp.ad_tab (entitytype);
CREATE INDEX CONCURRENTLY idx_ad_tab_ad_process_id ON  brerp.ad_tab (ad_process_id);
CREATE INDEX CONCURRENTLY idx_ad_reference_entitytype ON  brerp.ad_reference (entitytype);
CREATE INDEX CONCURRENTLY idx_ad_message_entitytype ON  brerp.ad_message (entitytype);
CREATE INDEX CONCURRENTLY idx_ad_wf_node_entitytype ON  brerp.ad_wf_node (entitytype);
CREATE INDEX CONCURRENTLY idx_ad_wf_node_ad_form_id ON  brerp.ad_wf_node (ad_form_id);
CREATE INDEX CONCURRENTLY idx_m_product_acct_p_averagecostvariance_acct ON  brerp.m_product_acct (p_averagecostvariance_acct);
CREATE INDEX CONCURRENTLY idx_m_product_acct_p_cogs_acct ON  brerp.m_product_acct (p_cogs_acct);
CREATE INDEX CONCURRENTLY idx_m_product_acct_p_costadjustment_acct ON  brerp.m_product_acct (p_costadjustment_acct);
CREATE INDEX CONCURRENTLY idx_m_product_acct_p_revenue_acct ON  brerp.m_product_acct (p_revenue_acct);
CREATE INDEX CONCURRENTLY idx_m_product_acct_p_ratevariance_acct ON  brerp.m_product_acct (p_ratevariance_acct);
CREATE INDEX CONCURRENTLY idx_m_product_acct_p_asset_acct ON  brerp.m_product_acct (p_asset_acct);
CREATE INDEX CONCURRENTLY idx_m_product_acct_p_expense_acct ON  brerp.m_product_acct (p_expense_acct);
CREATE INDEX CONCURRENTLY idx_ad_printformatitem_ad_printfont_id ON  brerp.ad_printformatitem (ad_printfont_id);
CREATE INDEX CONCURRENTLY idx_ad_process_para_entitytype ON  brerp.ad_process_para (entitytype);
CREATE INDEX CONCURRENTLY idx_ad_process_para_ad_reference_id ON  brerp.ad_process_para (ad_reference_id);
CREATE INDEX CONCURRENTLY idx_ad_printformatitem_ad_printformatchild_id ON  brerp.ad_printformatitem (ad_printformatchild_id);
CREATE INDEX CONCURRENTLY idx_ad_process_para_ad_val_rule_id ON  brerp.ad_process_para (ad_val_rule_id);
CREATE INDEX CONCURRENTLY idx_ad_process_para_ad_reference_value_id ON  brerp.ad_process_para (ad_reference_value_id);
CREATE INDEX CONCURRENTLY idx_ad_ref_list_entitytype ON  brerp.ad_ref_list (entitytype);
CREATE INDEX CONCURRENTLY idx_t_itensnaovendidosaclientes_c_bpartner_id ON  brerp.t_itensnaovendidosaclientes (c_bpartner_id);
CREATE INDEX CONCURRENTLY idx_t_itensnaovendidosaclientes_ad_pinstance_id ON  brerp.t_itensnaovendidosaclientes (ad_pinstance_id);
CREATE INDEX CONCURRENTLY idx_t_itensnaovendidosaclientes_m_product_category_id ON  brerp.t_itensnaovendidosaclientes (m_product_category_id);
CREATE INDEX CONCURRENTLY idx_ad_impformat_row_ad_impformat_id ON  brerp.ad_impformat_row (ad_impformat_id);
CREATE INDEX CONCURRENTLY idx_ad_wf_process_ad_table_id ON  brerp.ad_wf_process (ad_table_id);
CREATE INDEX CONCURRENTLY idx_ad_wf_process_ad_user_id ON  brerp.ad_wf_process (ad_user_id);
CREATE INDEX CONCURRENTLY idx_ad_document_action_access_ad_ref_list_id ON  brerp.ad_document_action_access (ad_ref_list_id);
CREATE INDEX CONCURRENTLY idx_ad_document_action_access_c_doctype_id ON  brerp.ad_document_action_access (c_doctype_id);
CREATE INDEX CONCURRENTLY idx_ad_package_imp_detail_ad_package_imp_id ON  brerp.ad_package_imp_detail (ad_package_imp_id);
CREATE INDEX CONCURRENTLY idx_m_inventoryline_m_locator_id ON  brerp.m_inventoryline (m_locator_id);
CREATE INDEX CONCURRENTLY idx_ad_package_imp_detail_ad_table_id ON  brerp.ad_package_imp_detail (ad_table_id);
CREATE INDEX CONCURRENTLY idx_m_inventoryline_c_charge_id ON  brerp.m_inventoryline (c_charge_id);
CREATE INDEX CONCURRENTLY idx_m_inventoryline_m_product_id ON  brerp.m_inventoryline (m_product_id);
CREATE INDEX CONCURRENTLY idx_u_webmenu_parentmenu_id ON  brerp.u_webmenu (parentmenu_id);
CREATE INDEX CONCURRENTLY idx_ad_wf_eventaudit_ad_table_id ON  brerp.ad_wf_eventaudit (ad_table_id);
CREATE INDEX CONCURRENTLY idx_ad_wf_eventaudit_ad_wf_node_id ON  brerp.ad_wf_eventaudit (ad_wf_node_id);
CREATE INDEX CONCURRENTLY idx_ad_wf_eventaudit_ad_user_id ON  brerp.ad_wf_eventaudit (ad_user_id);
CREATE INDEX CONCURRENTLY idx_ad_usermail_ad_user_id ON  brerp.ad_usermail (ad_user_id);
CREATE INDEX CONCURRENTLY idx_ad_changelog_ad_column_id ON  brerp.ad_changelog (ad_column_id);
CREATE INDEX CONCURRENTLY idx_c_ordertax_c_tax_id ON  brerp.c_ordertax (c_tax_id);
CREATE INDEX CONCURRENTLY idx_ad_pinstance_log_ad_table_id ON  brerp.ad_pinstance_log (ad_table_id);

CREATE INDEX CONCURRENTLY idx_m_product_salesrep_id ON  brerp.m_product (salesrep_id);
CREATE INDEX CONCURRENTLY idx_c_order_cof_c_custody_id ON  brerp.c_order (cof_c_custody_id);
CREATE INDEX CONCURRENTLY idx_cof_titulo_cof_c_bankoccurrence_id ON  brerp.cof_titulo (cof_c_bankoccurrence_id);
CREATE INDEX CONCURRENTLY idx_ad_field_ad_fieldstyle_id ON  brerp.ad_field (ad_fieldstyle_id);
CREATE INDEX CONCURRENTLY idx_ad_note_ad_message_id ON  brerp.ad_note (ad_message_id);
CREATE INDEX CONCURRENTLY idx_ad_infocolumn_entitytype ON  brerp.ad_infocolumn (entitytype);
CREATE INDEX CONCURRENTLY idx_c_orderpayschedule_cof_c_custody_id ON  brerp.c_orderpayschedule (cof_c_custody_id);
CREATE INDEX CONCURRENTLY idx_m_inoutline_user1_id ON  brerp.m_inoutline (user1_id);
CREATE INDEX CONCURRENTLY idx_m_movementline_m_locatorto_id ON  brerp.m_movementline (m_locatorto_id);

CREATE INDEX CONCURRENTLY idx_cof_c_controlcheck_createdby ON  brerp.cof_c_controlcheck (createdby);
CREATE INDEX CONCURRENTLY idx_cof_c_controlcheck_updatedby ON  brerp.cof_c_controlcheck (updatedby);
CREATE INDEX CONCURRENTLY idx_c_invoiceline_c_uom_id ON  brerp.c_invoiceline (c_uom_id);
CREATE INDEX CONCURRENTLY idx_m_product_c_uom_id ON  brerp.m_product (c_uom_id);
CREATE INDEX CONCURRENTLY idx_m_product_po_c_uom_id ON  brerp.m_product_po (c_uom_id);
CREATE INDEX CONCURRENTLY idx_ad_field_ad_reference_value_id ON  brerp.ad_field (ad_reference_value_id);
CREATE INDEX CONCURRENTLY idx_m_movement_c_bpartner_id ON  brerp.m_movement (c_bpartner_id);
CREATE INDEX CONCURRENTLY idx_m_movement_c_bpartner_location_id ON  brerp.m_movement (c_bpartner_location_id);
CREATE INDEX CONCURRENTLY idx_m_inoutline_c_uom_id ON  brerp.m_inoutline (c_uom_id);
CREATE INDEX CONCURRENTLY idx_m_inoutline_m_locator_id ON  brerp.m_inoutline (m_locator_id);
CREATE INDEX CONCURRENTLY idx_ad_printformat_ad_printpaper_id ON  brerp.ad_printformat (ad_printpaper_id);
CREATE INDEX CONCURRENTLY idx_m_rma_c_doctype_id ON  brerp.m_rma (c_doctype_id);
CREATE INDEX CONCURRENTLY idx_c_orderline_c_uom_id ON  brerp.c_orderline (c_uom_id);
CREATE INDEX CONCURRENTLY idx_c_orderline_user1_id ON  brerp.c_orderline (user1_id);
CREATE INDEX CONCURRENTLY idx_lbr_docfiscal_detpag_createdby ON  brerp.lbr_docfiscal_detpag (createdby);
CREATE INDEX CONCURRENTLY idx_lbr_docfiscal_detpag_updatedby ON  brerp.lbr_docfiscal_detpag (updatedby);
CREATE INDEX CONCURRENTLY idx_m_product_acct_p_inventoryclearing_acct ON  brerp.m_product_acct (p_inventoryclearing_acct);
CREATE INDEX CONCURRENTLY idx_cof_packinglist_cof_driver_id ON  brerp.cof_packinglist (cof_driver_id);
CREATE INDEX CONCURRENTLY idx_cof_c_controlcheck_cof_c_checkcustody_id ON  brerp.cof_c_controlcheck (cof_c_checkcustody_id);
CREATE INDEX CONCURRENTLY idx_ad_workflow_trl_ad_language ON  brerp.ad_workflow_trl (ad_language);
CREATE INDEX CONCURRENTLY idx_ad_fieldgroup_trl_ad_language ON  brerp.ad_fieldgroup_trl (ad_language);
CREATE INDEX CONCURRENTLY idx_c_invoiceline_c_tax_id ON  brerp.c_invoiceline (c_tax_id);
CREATE INDEX CONCURRENTLY idx_c_uom_trl_ad_language ON  brerp.c_uom_trl (ad_language);
CREATE INDEX CONCURRENTLY idx_c_order_cof_reason_closing_order_id ON  brerp.c_order (cof_reason_closing_order_id);
CREATE INDEX CONCURRENTLY idx_m_product_po_c_currency_id ON  brerp.m_product_po (c_currency_id);
CREATE INDEX CONCURRENTLY idx_fact_acct_c_tax_id ON  brerp.fact_acct (c_tax_id);
CREATE INDEX CONCURRENTLY idx_m_inventory_c_doctype_id ON  brerp.m_inventory (c_doctype_id);
CREATE INDEX CONCURRENTLY idx_m_movement_user1_id ON  brerp.m_movement (user1_id);
CREATE INDEX CONCURRENTLY idx_m_productionline_m_locator_id ON  brerp.m_productionline (m_locator_id);
CREATE INDEX CONCURRENTLY idx_cof_packinglist_line_cof_deliveryoccurrence_id ON  brerp.cof_packinglist_line (cof_deliveryoccurrence_id);
CREATE INDEX CONCURRENTLY idx_m_rmaline_c_tax_id ON  brerp.m_rmaline (c_tax_id);
CREATE INDEX CONCURRENTLY idx_ad_tab_trl_ad_language ON  brerp.ad_tab_trl (ad_language);
CREATE INDEX CONCURRENTLY idx_ad_printformat_ad_printtableformat_id ON  brerp.ad_printformat (ad_printtableformat_id);
CREATE INDEX CONCURRENTLY idx_ad_printformat_jasperprocess_id ON  brerp.ad_printformat (jasperprocess_id);
CREATE INDEX CONCURRENTLY idx_ad_window_trl_ad_language ON  brerp.ad_window_trl (ad_language);
CREATE INDEX CONCURRENTLY idx_ad_menu_trl_ad_language ON  brerp.ad_menu_trl (ad_language);
CREATE INDEX CONCURRENTLY idx_ad_process_trl_ad_language ON  brerp.ad_process_trl (ad_language);
CREATE INDEX CONCURRENTLY idx_c_orderline_c_tax_id ON  brerp.c_orderline (c_tax_id);
CREATE INDEX CONCURRENTLY idx_c_orderline_z_promocao_id ON  brerp.c_orderline (z_promocao_id);
CREATE INDEX CONCURRENTLY idx_ad_ref_list_trl_ad_language ON  brerp.ad_ref_list_trl (ad_language);
CREATE INDEX CONCURRENTLY idx_ad_element_trl_ad_language ON  brerp.ad_element_trl (ad_language);
CREATE INDEX CONCURRENTLY idx_ad_table_trl_ad_language ON  brerp.ad_table_trl (ad_language);
CREATE INDEX CONCURRENTLY idx_m_product_acct_cof_p_inventoryclearing_acct ON  brerp.m_product_acct (cof_p_inventoryclearing_acct);
CREATE INDEX CONCURRENTLY idx_m_product_acct_p_invoicepricevariance_acct ON  brerp.m_product_acct (p_invoicepricevariance_acct);
CREATE INDEX CONCURRENTLY idx_m_product_acct_p_landedcostclearing_acct ON  brerp.m_product_acct (p_landedcostclearing_acct);
CREATE INDEX CONCURRENTLY idx_m_product_acct_p_purchasepricevariance_acct ON  brerp.m_product_acct (p_purchasepricevariance_acct);
CREATE INDEX CONCURRENTLY idx_m_product_acct_p_tradediscountgrant_acct ON  brerp.m_product_acct (p_tradediscountgrant_acct);
CREATE INDEX CONCURRENTLY idx_m_product_acct_p_tradediscountrec_acct ON  brerp.m_product_acct (p_tradediscountrec_acct);
CREATE INDEX CONCURRENTLY idx_ad_printformatitem_ad_printcolor_id ON  brerp.ad_printformatitem (ad_printcolor_id);
CREATE INDEX CONCURRENTLY idx_ad_reference_trl_ad_language ON  brerp.ad_reference_trl (ad_language);
CREATE INDEX CONCURRENTLY idx_ad_field_trl_ad_language ON  brerp.ad_field_trl (ad_language);
CREATE INDEX CONCURRENTLY idx_ad_process_para_trl_ad_language ON  brerp.ad_process_para_trl (ad_language);
CREATE INDEX CONCURRENTLY idx_ad_column_trl_ad_language ON  brerp.ad_column_trl (ad_language);
CREATE INDEX CONCURRENTLY idx_cof_packinglist_cof_equipments_id ON  brerp.cof_packinglist (cof_equipments_id);

-- script 3
 drop index brerp.ad_element_clientorg;
 drop index brerp.ad_treenodebp_parent;
 drop index brerp.ad_treenodemm_parent;
 drop index brerp.ad_treenodepr_parent;
 drop index brerp.ad_wf_activity_who;
 drop index brerp.ad_wf_process_workflow;
 drop index brerp.c_acctschema_element_schema;
 drop index brerp.c_bpartner_name;
 drop index brerp.c_bpbankacct_bpartner;
 drop index brerp.c_bpbankacct_bpartner;
 drop index brerp.c_bplocation_updated;
 drop index brerp.c_commissionamt_comline;
 drop index brerp.c_commissionline_commission;
 drop index brerp.c_elementvalue_name;
 drop index brerp.c_order_processed;
 drop index brerp.c_payselline_paysel;
 drop index brerp.c_uom_x12;
 drop index brerp.m_costdetail_asi;
 drop index brerp.cof_lbr_docfiscal_lbr_nfestatus;
 drop index brerp.m_product_upc;
 drop index brerp.m_product_name;
 drop index brerp.m_productionline_prodplan;
 drop index brerp.t_cashflow_speed;
 drop index brerp.trec_matchcode;

-- script 4
CREATE index concurrently idx_cof_titulo_c_invoicepayschedule_id_funcao ON brerp.cof_titulo USING btree (COALESCE(c_invoicepayschedule_id, (0)::numeric));
CREATE INDEX concurrently idx_cof_titulo_c_invoicepayschedule_id_isvalid_funcao ON brerp.cof_titulo USING btree (COALESCE(c_invoicepayschedule_id, (0)::numeric), isvalid);
create index concurrently idx_c_invoice_docstatus_ispayschedulevalid_issotrx on c_invoice (docstatus,ispayschedulevalid,issotrx);
create index concurrently idx_cof_titulo_c_invoicepayschedule_id_isvalid on cof_titulo (c_invoicepayschedule_id,isvalid);
create index concurrently idx_cof_titulo_c_invoicepayschedule_id_isvalid_cof_BillFoldType on cof_titulo (c_invoicepayschedule_id,isvalid,cof_BillFoldType);
create index concurrently idx_c_invoicepayschedule_c_invoice_id_c_invoicepayschedule_id on  c_invoicepayschedule (c_invoice_id,c_invoicepayschedule_id);
create index concurrently idx_ad_table_tablename on ad_table (tablename);
create index concurrently idx_cof_c_controlcheck_datedoc on cof_c_controlcheck (datedoc);
create index concurrently idx_cof_c_controlcheck_cof_datecleared on cof_c_controlcheck (cof_datecleared);
create index concurrently idx_cof_c_controlcheck_chequeno on cof_c_controlcheck (chequeno);
create index concurrently idx_ad_preference_ad_preference_uu on ad_preference (ad_preference_uu);
create index concurrently idx_lbr_docfiscal_ide_cnf on lbr_docfiscal (ide_cnf);
create index concurrently idx_lbr_docfiscal_processedon on lbr_docfiscal (processedon);
create index concurrently idx_lbr_docfiscal_lbr_docfiscal_uu on lbr_docfiscal (lbr_docfiscal_uu);
create index concurrently idx_lbr_docfiscal_lbr_infnfe_id on lbr_docfiscal (infnfe_id);
create index concurrently idx_lbr_docfiscal_c_order_id on lbr_docfiscal (c_order_id);
create index concurrently idx_lbr_docfiscal_documentno on lbr_docfiscal (documentno);
create index concurrently idx_lbr_docfiscal_cobr_fat_nfat on lbr_docfiscal (cobr_fat_nfat);
create index concurrently idx_lbr_docfiscal_ide_nnf on lbr_docfiscal (ide_nnf);
create index concurrently idx_lbr_docfiscal_emit_bpartner_location_id on lbr_docfiscal (emit_bpartner_location_id);
create index concurrently idx_lbr_docfiscal_emit_bpartner_id on lbr_docfiscal (emit_bpartner_id);
create index concurrently idx_lbr_docfiscal_c_invoice_id on lbr_docfiscal (c_invoice_id);
create index concurrently idx_lbr_docfiscal_emit_city_id on lbr_docfiscal (emit_city_id);
create index concurrently idx_lbr_docfiscal_dest_city_id on lbr_docfiscal (dest_city_id);
create index concurrently idx_lbr_dest_bpartner_id on lbr_docfiscal (dest_bpartner_id);
create index concurrently idx_lbr_docfiscal_c_paymentterm_id on lbr_docfiscal (c_paymentterm_id);
create index concurrently idx_lbr_docfiscal_m_pricelist_id on lbr_docfiscal (m_pricelist_id);
create index concurrently idx_c_invoicepayschedule_duedate_funcao_trunc on c_invoicepayschedule (TRUNC (c_invoicepayschedule.DueDate)) ;
create index concurrently idx_c_bpartner_c_bpartner_id on c_bpartner_location (c_bpartner_id) ;   
create index concurrently idx_c_allocationhdr_isactive_c_allocationhdr_id on c_allocationhdr (IsActive,C_AllocationHdr_ID);                                                                                                                                                                                            
create index concurrently idx_c_invoicepayschedule_coalesce_c_invoicepayschedule_id on c_invoicepayschedule (coalesce(c_invoicepayschedule_id,0));
create index concurrently idx_C_Invoice_IsSOTrx_Processed_Updated_AD_Client_AD_Org_ID_C_Invoice_ID on C_Invoice (IsSOTrx,Processed,Updated,aD_Client_ID,AD_Org_ID,C_Invoice_ID,DocumentNo desc);                                                                                                                                                                                               
create index idx_COF_Titulo_coalesce_c_invoicepayschedule_id on COF_Titulo (coalesce(C_InvoicePaySchedule_ID,0));                                                                                                                                                                                              


-- script 5
ALTER TABLE brerp.lbr_docfiscal add  CONSTRAINT fk_lbr_docfiscal_c_doctype FOREIGN KEY (c_doctype_id)
      REFERENCES c_doctype (c_doctype_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE brerp.lbr_docfiscal add  CONSTRAINT fk_lbr_docfiscal_c_doctypetarget FOREIGN KEY (c_doctypetarget_id)
      REFERENCES c_doctype (c_doctype_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;      
ALTER TABLE brerp.lbr_docfiscal add  CONSTRAINT fk_lbr_docfiscal_ad_org FOREIGN KEY (ad_org_id)
      REFERENCES AD_org (ad_org_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;
 ALTER TABLE brerp.lbr_docfiscal add  CONSTRAINT fk_lbr_docfiscal_dest_bpartner FOREIGN KEY (dest_bpartner_id)
      REFERENCES C_Bpartner (C_bpartner_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;
 ALTER TABLE brerp.lbr_docfiscal add  CONSTRAINT fk_lbr_docfiscal_dest_bpartner_location FOREIGN KEY (dest_bpartner_location_id)
      REFERENCES C_Bpartner_Location (C_bpartner_location_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;
 ALTER TABLE brerp.lbr_docfiscal add  CONSTRAINT fk_lbr_docfiscal_emit_bpartner FOREIGN KEY (emit_bpartner_id)
      REFERENCES C_BPartner (C_bpartner_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;
 ALTER TABLE brerp.lbr_docfiscal add  CONSTRAINT fk_lbr_docfiscal_emit_bpartner_location FOREIGN KEY (emit_bpartner_location_id)
      REFERENCES C_Bpartner_Location (C_bpartner_location_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;                  
 ALTER TABLE brerp.lbr_docfiscal add  CONSTRAINT fk_lbr_docfiscal_dest_country FOREIGN KEY (dest_country_id)
      REFERENCES C_Country (C_country_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;      
  ALTER TABLE brerp.lbr_docfiscal add  CONSTRAINT fk_lbr_docfiscal_emit_country FOREIGN KEY (emit_country_id)
      REFERENCES C_Country (C_country_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;     
 ALTER TABLE brerp.lbr_docfiscal add  CONSTRAINT fk_lbr_docfiscal_emit_region FOREIGN KEY (emit_region_id)
      REFERENCES C_Region (C_region_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;       
 ALTER TABLE brerp.lbr_docfiscal add  CONSTRAINT fk_lbr_docfiscal_dest_region FOREIGN KEY (dest_region_id)
      REFERENCES C_Region (C_region_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;  
 ALTER TABLE brerp.lbr_docfiscal add  CONSTRAINT fk_lbr_docfiscal_emit_city FOREIGN KEY (emit_city_id)
      REFERENCES C_City (C_city_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;  
      
 ALTER TABLE brerp.lbr_docfiscal add  CONSTRAINT fk_lbr_docfiscal_dest_city FOREIGN KEY (dest_city_id)
      REFERENCES C_City (C_city_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;  
  ALTER TABLE brerp.lbr_docfiscal add  CONSTRAINT fk_lbr_docfiscal_c_invoice FOREIGN KEY (c_invoice_id)
      REFERENCES C_Invoice (c_invoice_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;
   ALTER TABLE brerp.lbr_docfiscal add  CONSTRAINT fk_lbr_docfiscal_c_order FOREIGN KEY (c_order_id)
      REFERENCES C_Order (c_order_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;
    ALTER TABLE brerp.lbr_docfiscal add  CONSTRAINT fk_lbr_docfiscal_m_pricelist FOREIGN KEY (m_pricelist_id)
      REFERENCES M_PriceList (m_pricelist_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;
   ALTER TABLE brerp.lbr_docfiscal add  CONSTRAINT fk_lbr_docfiscal_c_paymentterm FOREIGN KEY (c_paymentterm_id)
      REFERENCES c_paymentterm (c_paymentterm_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;
  ALTER TABLE brerp.lbr_docfiscal add  CONSTRAINT fk_lbr_docfiscal_org_location FOREIGN KEY (org_location_id)
      REFERENCES C_Location (C_location_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;        
  ALTER TABLE brerp.lbr_docfiscal add  CONSTRAINT fk_lbr_docfiscal_lbr_nfelot FOREIGN KEY (lbr_nfelot_id)
      REFERENCES lbr_nfelot (lbr_nfelot_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;  

-- script 6
CREATE INDEX CONCURRENTLY idx_c_invoice_ispaid_ad_client_docstatus_issotrx_DunningGrace on c_invoice (IsPaid,AD_Client_ID,DocStatus,IsSOTrx,DunningGrace);
CREATE INDEX CONCURRENTLY idx_t_bankregister_dateacct        		on t_bankregister (dateacct);
CREATE INDEX CONCURRENTLY idx_t_bankregister_ad_pinstance_id 	on t_bankregister (ad_pinstance_id);
CREATE INDEX CONCURRENTLY idx_t_bankregister_c_bank_id 		 on t_bankregister (c_bank_id);
CREATE INDEX CONCURRENTLY idx_t_bankregister_c_bpartner_id 		 on t_bankregister (c_bpartner_id);
CREATE INDEX CONCURRENTLY idx_t_bankregister_documentno 		 on t_bankregister (documentno);
CREATE INDEX CONCURRENTLY idx_t_cashflow_c_invoice_id 	 	     on t_cashflow (c_invoice_id);
CREATE INDEX CONCURRENTLY idx_t_cashflow_c_bpartner_id 	 	     on t_cashflow (c_bpartner_id);
CREATE INDEX CONCURRENTLY idx_t_cashflow_c_order_id 	 	     on t_cashflow (c_order_id);
CREATE INDEX CONCURRENTLY idx_t_cashflow_ad_pinstance_id 	 	     on t_cashflow (ad_pinstance_id);
CREATE INDEX CONCURRENTLY idx_t_cashflow_c_cashplanline_id 	 	     on t_cashflow (c_cashplanline_id);
CREATE INDEX CONCURRENTLY idx_t_cashflow_c_elementvalue_id 	     on t_cashflow (c_elementvalue_id);
CREATE INDEX CONCURRENTLY idx_t_cashflow_c_charge_id 	 	     on t_cashflow (c_charge_id);
CREATE INDEX CONCURRENTLY idx_c_commissionamt_c_commissionline_id   on c_commissionamt (c_commissionline_id);
CREATE INDEX CONCURRENTLY idx_c_commissionamt_c_commissionrun_id   on c_commissionamt (c_commissionrun_id);
CREATE INDEX CONCURRENTLY idx_c_commissionamt_c_commissionline_id   on c_commissionamt (c_commissionline_id);
CREATE INDEX CONCURRENTLY idx_c_commissionamt_c_commissionrun_id   on c_commissionamt (c_commissionrun_id);
CREATE INDEX CONCURRENTLY idx_fact_acct_ad_org_ad_client_dateacct_funcao_PostingType on fact_acct (ad_org_id,ad_client_id,CAST(dateacct as DATE),PostingType);
CREATE INDEX CONCURRENTLY idx_fact_acct_dateacct_funcao on fact_acct (CAST(dateacct as DATE));
CREATE INDEX CONCURRENTLY idx_fact_acct_dateacct_funcao_PostingType on fact_acct (CAST(dateacct as DATE) ,PostingType);
CREATE INDEX CONCURRENTLY idx_fact_acct_Record_ID_dateacct  on fact_acct (Record_ID,dateacct);
CREATE INDEX CONCURRENTLY idx_fact_acct_concat_ad_table_id_Record_ID  on fact_acct (CAST(ad_table_id as TEXT) , CAST(Record_ID as TEXT));
CREATE INDEX CONCURRENTLY idx_C_ElementValue_value on C_ElementValue (value);
CREATE INDEX CONCURRENTLY idx_fact_acct_concat_funcao_ad_table_id_Record_ID  on fact_acct ( (CAST(AD_Table_ID as TEXT) || '' || CAST(Record_ID as TEXT)));
 create index concurrently idx_t_reconciliation_ad_pinstance on t_reconciliation (ad_pinstance_id);
 create index concurrently idx_t_reconciliation_fact_acct on t_reconciliation (fact_acct_id);
  create index concurrently idx_c_bankstatement_processedon on  c_bankstatement (processedon);
create index CONCURRENTLY idx_ad_session_websession on ad_session (websession);
create index CONCURRENTLY idx_ad_session_remote_addr on ad_session (remote_addr);
create index CONCURRENTLY idx_ad_session_remote_host on ad_session (remote_host); 
 
create index concurrently idx_ad_treenodemm_parent_id on  ad_treenodemm (parent_id);
create index concurrently idx_ad_treenodemm_seqno on  ad_treenodemm (seqno);
create index concurrently idx_ad_treenodemm_node on  ad_treenodemm (node_id);


-- script 7
CREATE INDEX CONCURRENTLY idx_ad_wf_activity_ecord_processed_ad_wf_activity ON ad_wf_activity (record_id,AD_Table_ID,processed);


create index concurrently idx_c_invoice_createdby_AD_Org_ad_client   	  on c_invoice (createdby,AD_Org_ID,ad_client_id);
create index concurrently idx_c_payment_createdby_AD_Org_ad_client   	  on c_payment (createdby,AD_Org_ID,ad_client_id);
create index concurrently idx_m_inout_createdby_AD_Org_ad_client     	  on m_inout (createdby,AD_Org_ID,ad_client_id);
create index concurrently idx_m_inventory_createdby_AD_Org_ad_client      on m_inventory (createdby,AD_Org_ID,ad_client_id);
create index concurrently idx_m_movement_createdby_AD_Org_ad_client  	  on m_movement (createdby,AD_Org_ID,ad_client_id);
create index concurrently idx_c_allocationhdr_createdby_AD_Org_ad_client  on c_allocationhdr (createdby,AD_Org_ID,ad_client_id);
create index concurrently idx_c_order_createdby_AD_Org_ad_client  		  on c_order (createdby,AD_Org_ID,ad_client_id);
create index concurrently idx_c_bankstatement_createdby_AD_Org_ad_client  on c_bankstatement (createdby,AD_Org_ID,ad_client_id);


-- mht daqui pra baixo tem que ser analisada a query
SELECT pg_size_pretty(SUM(pg_relation_size(idx))::BIGINT) AS SIZE,
       (array_agg(idx))[1] AS idx1, (array_agg(idx))[2] AS idx2,
       (array_agg(idx))[3] AS idx3, (array_agg(idx))[4] AS idx4
FROM (
    SELECT indexrelid::regclass AS idx, (indrelid::text ||E'\n'|| indclass::text ||E'\n'|| indkey::text ||E'\n'||
                                         COALESCE(indexprs::text,'')||E'\n' || COALESCE(indpred::text,'')) AS KEY
    FROM pg_index) sub
GROUP BY KEY HAVING COUNT(*)>1
ORDER BY SUM(pg_relation_size(idx)) DESC;

-- identificados os duplicados
size	idx1	idx2	idx3	idx4
27 MB	lbr_docfiscal_uu_idx	idx_lbr_docfiscal_lbr_docfiscal_uu	[NULL]	[NULL]
21 MB	udi_inoutline_docfiscalline	idx_lbr_docfiscal_line_m_inoutline_id	[NULL]	[NULL]
2496 kB	c_bplocation_bpartner	idx_c_bpartner_c_bpartner_id	[NULL]	[NULL]
528 kB	ad_preference_uu_idx	idx_ad_preference_ad_preference_uu	[NULL]	[NULL]
128 kB	ad_table_name	idx_ad_table_tablename	[NULL]	[NULL]
80 kB	c_commissionamt_run	idx_c_commissionamt_c_commissionrun_id	[NULL]	[NULL]
32 kB	c_currency_pkey	c_currency_c_currency_id_idx	[NULL]	[NULL]
 

-- eleger algum para excluir 
drop index m_costdetail_il;
drop index idx_lbr_docfiscal_line_m_inoutline_id;
drop index udi_inoutline_docfiscalline;
drop index c_bplocation_bpartner;
drop index ad_preference_uu_idx;
drop index ad_table_name;
drop index c_commissionamt_run;
drop index c_currency_c_currency_id_idx;
drop index idx_lbr_docfiscal_lbr_docfiscal_uu;
