@RestResource(urlmapping='/rjtilak/*')
global class ApexWebCallIns {

    @HttpGet
    global static Account getAccount(){
        
        RestRequest request = RestContext.request;
       	string acid = request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
        
        Account ac = [select id, name from account where id = : acid ];
        return ac;
        
    }
    
    @HttpPost
    global static string doPost(string name, string phone, string web){
        
        Account ac = new Account();
        ac.Name= name;
        ac.Phone = phone;
        ac.Website = web;
        insert ac;
        
        return ac.Id;
            
    }
    
    
}