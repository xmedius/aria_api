require 'spec_helper'

describe AriaBilling::Service do

  describe "self.actions", :vcr do
    it "returns an array with all the available soap actions", :vcr do
      actions = AriaBilling::Service.actions
      calls = [:get_parent_for_item_class, :validate_session, :get_statement_content, :get_child_accts]
      actions.should include(calls.sample)
    end
  end
end
