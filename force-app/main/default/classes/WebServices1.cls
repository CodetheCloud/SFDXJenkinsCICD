@RestResource(urlMapping='/ram/*')
global class WebServices1 {
	
    @HttpGet
    global static Account getAccountAndGiveAnyName(){
        
        RestRequest request = RestContext.request;
        string acid = request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
        
        account ac = [select id, name, phone, Industry from account where id =: acid];
        return ac;
        
    }
    
    @HttpPost
    global static ID putAnyName(String subject, String num){
        Account a = new Account(name = subject , phone = num) ;
        insert a;
        return a.Id;
        
       
    }
    
}