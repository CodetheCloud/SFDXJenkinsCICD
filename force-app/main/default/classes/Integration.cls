public class Integration {

    
    public static void doCall(string num){
        
        string token = 'b19efb6912a9ba7159c47d79fe7408b9';
        string endpoint  = 'http://apilayer.net/api/validate?access_key='+ token +'&number='+ num +'&country_code=IN&format%20=%201';
        
        HTTP h = new HTTP();
        HTTPRequest req = new HTTPRequest();
        req.setMethod('GET');
        req.setEndpoint(endpoint);
        
        HTTPResponse resp = h.send(req);
        system.debug('resp = '+resp);
        
        
        if(resp.getStatusCode() == 200){
            system.debug('body = '+ resp.getBody());
        }
        
    }
    
    
}