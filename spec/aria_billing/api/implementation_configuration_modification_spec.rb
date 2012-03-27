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
end