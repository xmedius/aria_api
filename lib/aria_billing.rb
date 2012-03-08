require "httparty"
require "aria_billing/exceptions"
require "aria_billing/configuration"

module AriaBilling
  include HTTParty

  def self.make_request(opts={})
    opts = request_defaults.merge opts
    post(AriaBilling::Configuration.url, body: opts)
  end

  def self.request_defaults
    { output_format: "json" }.merge AriaBilling::Configuration.credentials
  end


end
