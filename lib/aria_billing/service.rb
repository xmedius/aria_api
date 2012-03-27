module AriaBilling
  class Service
    def self.actions
      url = "https://secure.future.stage.ariasystems.net/api/Advanced/wsdl/5.7/complete-doc_literal_wrapped.wsdl"
      client = Savon::Client.new url
      client.wsdl.soap_actions
    end
  end
end
