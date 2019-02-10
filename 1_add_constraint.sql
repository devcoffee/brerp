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
