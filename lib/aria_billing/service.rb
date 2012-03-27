module AriaBilling
  class Service
    CALLS = [ 'get_country_from_ip','gen_random_string','get_client_countries',
              'userid_exists','userid_is_available','validate_session',
              'get_web_replacement_vals','reset_usg_mtd_bal','reset_usg_ptd_bal',
              'set_acct_usg_mtd_threshold','set_acct_usg_ptd_threshold','set_client_usg_mtd_threshold',
              'set_client_usg_ptd_threshold','get_unbilled_usage_summary','create_acct_complete',
              'adjust_billing_dates','assign_collections_acct_group','assign_functional_acct_group',
              'assign_supp_plan','ban_acct','cancel_acct_plan_contract','cancel_supp_plan',
              'close_acct_installation','create_acct_plan_contract','modify_acct_plan_contract',
              'modify_supp_plan','modify_acct_supp_field','remove_acct_from_group',
              'remove_custom_acct_rates','remove_pay_method','replace_supp_plan',
              'set_pay_method_bank_draft', 'set_pay_method_cc','set_pay_method_net_terms',
              'set_payment_responsibility','update_acct_complete','update_acct_contact',
              'update_acct_credentials','update_acct_notify_method','update_acct_status',
              'update_acct_supp_fields','update_existing_billing_info','get_acct_comments',
              'authenticate_client','get_acct_details_all','get_acct_groups_by_acct',
              'get_acct_notify_method','get_acct_no_from_userid','get_acct_plan_contract',
              'get_acct_plan_history','get_acct_plans','get_acct_plans_all',
              'get_acct_supp_fields','get_acct_trans_history','get_accts_w_existing_pay_meth',
              'get_avail_child_plans_for_acct','get_avail_child_plans_for_acct_all','get_child_accts',
              'get_order_items','get_queued_service_plans','get_recurring_credit_info',
              'get_standing_usage','get_supp_field_values','get_usage_history',
              'get_userid_from_acct_no','gen_statement','send_acct_email',
              'send_arc_threshold_email','write_acct_comment','update_billing_info',
              'get_acct_invoice_history', 'get_acct_message','get_acct_message_size',
              'get_acct_statement_history','get_acct_status_history','get_acct_supp_plan_history',
              'get_statement_content','get_statement_content_size','get_statement_for_inv_size',
              'get_statement_for_invoice','authorize_electronic_payment','collect_from_account',
              'create_order','create_order_with_plans','gen_invoice',
              'manage_pending_invoice','record_external_payment','record_out_going_payment',
              'record_standing_usage','record_usage','settle_account_balance',
              'apply_cash_credit','apply_coupon_to_acct','apply_service_credit',
              'assing_custom_acct_rate','cancel_order','cancel_queued_service_plan',
              'cancel_standing_order','cancel_unconsumed_credit','create_advaced_service_credit',
              'disable_standing_usage','record_standing_order','reinstate_transaction',
              'transfer_account_balance','update_acct_billing_contact','void_transaction',
              'get_acct_has_ordered_sku','get_family_trans_history','get_invoice_details',
              'get_order','get_payment_applications','get_payments_on_invoice',
              'get_pending_invoice_no','get_refund_details','get_standing_order',
              'get_standing_order_hist','get_standing_order_items','get_unapplied_service_credits',
              'validate_payment_information','clear_reg_uss_config_params','clear_reg_uss_params',
              'client_has_event_class','delete_reg_uss_config_params','delete_reg_uss_params',
              'get_acct_groups_by_client','get_acct_payment_methods','get_auf_status',
              'get_avail_child_plans_for_plan','get_avail_child_plans_for_plan_all','get_available_plans',
              'get_available_plans_all','get_child_for_item_class','get_client_currencies',
              'get_client_plan_service_rates','get_client_plan_services','get_client_plans_all',
              'get_client_plans_basic','get_current_system_version','get_email_templates',
              'get_inv_no_from_bal_xfer','get_items_by_class','get_items_by_supp_field',
              'get_master_plans_by_supp_field','get_parent_for_item_class','get_plans_by_promo_code',
              'get_plans_by_promo_code_all','get_rate_schedules_for_plan','get_reg_uss_config_params',
              'get_reg_uss_params','get_supp_plans_by_promo_code','get_supp_plans_by_promo_code_all',
              'get_supp_plans_by_supp_field','get_top_level_item_class','pre_calc_invoice',
              'replace_reg_uss_config_params','replace_reg_uss_params','set_reg_uss_config_params',
              'set_reg_uss_params']

    def self.actions
      url = "https://secure.future.stage.ariasystems.net/api/Advanced/wsdl/5.7/complete-doc_literal_wrapped.wsdl"
      client = Savon::Client.new url
      client.wsdl.soap_actions
    end
  end
end
