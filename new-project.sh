#!/bin/bash

export VERSION=13                                                                                                             
export DATABASE=database13                                                                                                      
export BACKUP_FILE=backup.sql                                                                                   
export LIST=sale_management,account,stock,point_of_sale,project,mrp,mass_mailing,hr,mail,contacts,survey,web_responsive,pos_epson_printer,pos_epson_printer_restaurant,pos_mrp,pos_restaurant,pos_sale,l10n_latam_base,stock_account,account_debit_note,account_edi,account_edi_ubl_cii,account_payment,account_payment_invoice_online_payment_patch,account_sequence,analytic,auth_signup,auth_totp,auth_totp_mail,auth_totp_portal,barcodes,barcodes_gs1_nomenclature,base,base_import,base_install_request,base_setup,base_vat,bus,digest,google_gmail,hr_gamification,hr_org_chart,iap,iap_mail,l10n_ar,l10n_latam_account_sequence,l10n_latam_invoice_document,link_tracker,mail_bot,mail_bot_hr,mass_mailing_sale,mrp_account,partner_autocomplete,payment,portal_rating,pos_hr,pos_hr_restaurant,pos_sale_order_print,pos_sale_product_configurator,privacy_lookup,product,project_mrp,project_sms,rating,resource,sale,sale_mrp,sale_product_configurator,sale_project,sale_project_stock,sale_sms,sale_stock,sales_team,sms,snailmail,snailmail_account,social_media,spreadsheet,spreadsheet_account,spreadsheet_dashboard,spreadsheet_dashboard_account,spreadsheet_dashboard_pos_hr,spreadsheet_dashboard_sale,spreadsheet_dashboard_stock_account,stock_sms,uom,utm,web,web_editor,web_kanban_gauge,web_tour,web_unsplash,mass_mailing_themes,gamification,portal,http_routing,phone_validation

init_new_db()
{
  odoo --db-filter=$DATABASE -d $DATABASE --without-demo=all -i $LIST --stop-after-init
}
