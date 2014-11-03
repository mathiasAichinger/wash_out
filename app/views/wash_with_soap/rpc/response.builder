xml.instruct!
xml.tag! "soap:Envelope", "xmlns:soap" => 'http://schemas.xmlsoap.org/soap/envelope/',
                          "xmlns:soap-enc" => 'http://schemas.xmlsoap.org/soap/encoding/',
                          "xmlns:xsd" => 'http://www.w3.org/2001/XMLSchema',
                          "xmlns:xsi" => 'http://www.w3.org/2001/XMLSchema-instance',
                          "xmlns:tns" => @namespace do

  xml.tag! "soap:Header" do
    wsdl_header_data xml, header
  end
  xml.tag! "soap:Body" do
    xml.tag! "tns:#{@action_spec[:response_tag]}" do
      wsdl_data xml, result
    end
  end
end