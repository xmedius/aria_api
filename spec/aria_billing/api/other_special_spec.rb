require 'spec_helper'

describe "Other-Special" do
	
	describe "self.gen_random_string(params)", :vcr do
		it "generates a random string" do
			params = { "rand_type" => 'A', "rand_length" => 5, "rand_case" => 'U' }
			response = api.gen_random_string params

			response.should have_key("random_string")
			response.should have_key("error_code")
			response.should have_key("error_msg")
		end
	end

	describe "self.get_all_acct_receipt_ids(params)", :vcr do
		it "Returns a list of all client receipt IDs associated with a specified account" do
			params = {"acct_no" => 1}
			response = api.get_all_acct_receipt_ids params

			response.should have_key("error_code")
			response.should have_key("error_msg")
			response.should have_key("acct_receipt")
		end
	end

	describe "self.get_all_actions_by_receipt_id(params)", :vcr do
		it "Returns a list of actions associated with a particular combination of client receipt ID and account" do
			params = {"acct_no" => 1}
			response = api.get_all_actions_by_receipt_id params

			response.should have_key("error_code")
			response.should have_key("error_msg")
			response.should have_key("receipt_action")
		end
	end
end
