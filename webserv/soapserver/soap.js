@WebServiceProvider(targetNamespace="http://attachment.service.soap.com/download")
@ServiceMode(value = javax.xml.ws.Service.Mode.MESSAGE)
@BindingType(value = HTTPBinding.HTTP_BINDING)
public final class ImageDownloadServiceProvider implements Provider<DataSource> {
    @Resource
    private WebServiceContext wsContext;

    @Override
    public DataSource invoke(DataSource request) {
        if (wsContext == null)
            throw new RuntimeException("dependency injection failed on wsContext");
        MessageContext msgContext = wsContext.getMessageContext();
        HttpExchange exchange = (HttpExchange) msgContext.get("com.sun.xml.internal.ws.http.exchange");
        String filename = exchange.getRequestURI().getQuery().replace("file=", "");
        switch ((String) msgContext.get(MessageContext.HTTP_REQUEST_METHOD)) {
        case "GET":
            return doGet(filename);
        default:
            throw new HTTPException(405);
        }
    }

    private DataSource doGet(String filename) {
        FileDataSource fds = new FileDataSource(filename);
        MimetypesFileTypeMap mtftm = new MimetypesFileTypeMap();
        mtftm.addMimeTypes("image/jpeg jpg");
        fds.setFileTypeMap(mtftm);
        return fds;
    }
      
      <?xml version="1.0" encoding="utf-8"?>
<soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
    <soap:Body>

<Hello xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://schemas.servicestack.net/types">
  <Name>String</Name>
</Hello>

    </soap:Body>
</soap:Envelope>
