require "httparty"
require "json"
require "savon"
require "aria_api/exceptions"
require "aria_api/configuration"
require 'aria_api/service'

module AriaApi
  include HTTParty

  def self.make_request(opts={})
    opts = request_defaults.merge opts
    post AriaApi::Configuration.url, :body => opts
  end

  def self.request_defaults
    { :output_format => "json" }.merge AriaApi::Configuration.credentials
  end

  class << self
    AriaApi::Service.actions.each do |call_name|
      # Poor-man's default block arguments for 1.8.7 with *args.
      define_method(call_name) do |*args|
        opts = args[0] || {}
        params = { :rest_call => call_name }.merge(opts)
        make_request params
      end
    end
  end
end
