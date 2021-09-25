@RestResource(urlMapping='/tilakr/*')
global class AccountManagement {

    
    @HttpGet 
    global static Account getAccount(){
        
        //Core Logic for REST Webservices. 
        RestRequest request = RestContext.request; //getting or reading the url of client. 
        string acid = request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
        
        system.debug('request == '+ request);
        
        
        Account a = [select id, name from account where id = : acid];
        return a;
        
    }
    
    @HttpPost 
    global static ID postAccount(String subject, String num, String origin, String priority){
        
       
       Account a = new Account(name = subject , phone = num) ;
        insert a;
        return a.Id;
        
    }
    
    
}