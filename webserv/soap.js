from zeep import Client

client = Client('http://www.example.com/exampleapi')
result = client.service.GetUser(123) # request user with ID 123

name = result['Username']

<?xml version="1.0"?>
<soap:Envelope xmlns:soap="http://www.w3.org/2003/05/soap-envelope">
  <soap:Header>
  </soap:Header>
  <soap:Body>
    <m:GetUser>
      <m:UserId>123</m:UserId>
    </m:GetUser>
  </soap:Body>
</soap:Envelope>

<?xml version="1.0"?>

<soap:Envelope
xmlns:soap="http://www.w3.org/2003/05/soap-envelope/"
soap:encodingStyle="http://www.w3.org/2003/05/soap-encoding">

<soap:Body>
  <m:GetUserResponse>
    <m:Username>Tony Stark</m:Username>
  </m:GetUserResponse>
</soap:Body>

</soap:Envelope>

import requests
req_headers = {"content-type": "text/xml"}
req_body =  "<?xml version=\"1.0\"?>"
req_body += "<soap:Envelope xmlns:soap=\"http://www.w3.org/2003/05/soap-envelope\">"
req_body += "<soap:Header></soap:Header>"
req_body += "<soap:Body>"
req_body += "<m:GetUser>"
req_body += "<m:UserId>123</m:UserId>"
req_body += "</m:GetUser>"
req_body += "</soap:Body>"
req_body += "</soap:Envelope>"
response = requests.post(
  "http://www.example.com/exampleapi",
  data=req_body,
  headers=req_headers
)
