require 'spec_helper'

describe "Implementation Configuration Modification" do

  describe "self.assign_supp_plan_multi(params)", :vcr do
    it "Assigns multiple supplemental plans to a specified account." do
        params = {"acct_no" => 1, "supp_plan_no" => 1}
	  response = api.assign_supp_plan_multi params

	  response.should have_key("error_code")
	  response.should have_key("proration_result_amount")
        response.should have_key("invoice_no")
        response.should have_key("collection_error_code")
        response.should have_key("collection_error_msg")
        response.should have_key("statement_error_code")
        response.should have_key("statement_error_msg")
        response.should have_key("proc_cvv_response")
        response.should have_key("proc_avs_response")
        response.should have_key("proc_cavv_response")
        response.should have_key("proc_status_code")
        response.should have_key("proc_status_text")
        response.should have_key("proc_payment_id")
        response.should have_key("proc_auth_code")
        response.should have_key("proc_merch_comments")
        response.should have_key("error_msg")
     end
   end

   describe "self.disable_all_standing_usage(params)", :vcr do
     it "Disable all standing_usage rect for given acct_no" do
        params = {"acct_no" => 1}
        response = api.disable_all_standing_usage

        response.should have_key("error_code")
        response.should have_key("error_msg")
     end
   end

   describe "self.disable_standing_usage_by_plan(params)", :vcr do
      it "Disables the standing usage records for a particular plan assigned to an account." do
          params = {"acct_no" => 1, "plan_no" => 1}
          response = api.disable_standing_usage_by_plan params

          response.should have_key("error_code")
          response.should have_key("error_msg")
      end
   end

   describe "self.get_acct_tax_exempt_status(params)", :vcr do
      it "Returns an account's tax exemption level (none, federal, state, or both federal and state)." do
          params = {"acct_no" => 1}
          response = api.get_acct_tax_exempt_status params

          response.should have_key("error_code")
          response.should have_key("error_msg")
          response.should have_key("exemption_level")
          response.should have_key("exemption_level_desc")
     end
   end

   describe "self.get_client_items(params)", :vcr do
      it "Returns a list of inventory items associated with a client" do
          response = api.get_client_items

          response.should have_key("client_items")
          response.should have_key("error_code")
          response.should have_key("error_msg")
      end
   end
end