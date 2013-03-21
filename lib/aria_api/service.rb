module AriaApi
  class Service
    def self.actions
      api_version = AriaApi::Configuration.api_version
      url = "https://secure.future.stage.ariasystems.net/api/Advanced/wsdl/#{api_version}/complete-doc_literal_wrapped.wsdl"
      client = Savon.client(wsdl: url)
      @actions ||= client.operations
    end
  end
end
