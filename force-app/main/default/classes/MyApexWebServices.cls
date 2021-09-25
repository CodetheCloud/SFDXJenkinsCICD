@RestResource(urlmapping='/myRestApi/*')	 
global class MyApexWebServices {
    
    @HttpPost
    global static string somePostMethod(string name, string phone, string web){
        account ac = new account();
        ac.name= name;
        ac.Phone = phone;
        ac.Website = web;
        insert ac;
        
        return 'it is done = '+ ac.id;
    }
    
    
    @Httpget 
    global static Account getAccount(){ //only 1 anotation per class.
        RestRequest request = RestContext.request;
        string acid = request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
        system.debug('this is from url fo rest callins ====== '+ acid);
        
        Account ac = [select id, name, CreatedByID, LastModifiedById, Phone, Industry from account where id = : acid];
        return ac;
    }
    
    

}