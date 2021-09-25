public class MyRestIntegration {
    
    public static wrapclass doMainCheck(string num, string countrycode ){
        
        
  		system.debug('Integration call for Mobile Number Check');
        
        My_System_Data__c  mycustomsettingdata = My_System_Data__c.getOrgDefaults();
        string accessKey = mycustomsettingdata.AccessKey__c;
        
        
        system.debug('my token key = '+ accessKey);
        
        string endpoint = 'http://apilayer.net/api/validate?' + 'access_key=' + accessKey + '&number=' + num + '&country_code=' + countrycode + '&format=1';
        //http://apilayer.net/api/validate?access_key=2904f5dde69f063856e950c2f5ea72f0&number=08792441859&country_code=IN&format=1
        system.debug('my final end Point = '+endpoint );
        
        http h = new  http();
        
        httpRequest req = new httpRequest(); 
        req.setMethod('GET');
        req.setEndpoint(endpoint);
        system.debug('starting request http ' + req);
        httpResponse resp = h.send(req);  //send the req to web services or server
        system.debug('resp = '+ resp);
        
        Map<String, Object> ResponseMap = new  Map<String, Object>(); 
        
        wrapclass Wrap = new wrapclass();  //default constructor
        
        if(resp.getStatusCode() == 200){
            system.debug('resp.getBody()  = '+ resp.getBody());
            
            ResponseMap = (Map<String, Object> ) JSON.deserializeUntyped(resp.getBody());  //converting the json into map<string,object>
            system.debug('ResponseMap = '+ ResponseMap);
            
            Wrap.valid = (boolean) ResponseMap.get('valid');
            
            Wrap.country_code = (string) ResponseMap.get('country_code');
            Wrap.carrier = (string) ResponseMap.get('carrier');
            Wrap.country_name = (string) ResponseMap.get('country_name');
            
            Wrap.location = (string) ResponseMap.get('location');
            
            system.debug('wrap = '+Wrap );
             
            
        }
        
        return Wrap;
    }
    
    
    public class wrapclass{
        public boolean valid {get; set;}
        public string country_code {get; set;}
        public string country_name {get; set;}
        public string location {get; set;}
        public string carrier {get; set;}
        
    }
}