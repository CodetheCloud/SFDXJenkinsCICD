@RestResource(urlMapping='/tilakrj/*')
global class RESTAccount {

    
    	@HttpDelete
    global static void doDelete() {
        system.debug('delete method rest');
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        String accountId = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        Account account = [SELECT Id FROM Account WHERE Id = :accountId];
        delete account;
    }
   
    @HttpGet
    global static Account doGet() {
        system.debug('get method rest');
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        String accountId = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        Account result = [SELECT Id, Name, Phone, Website FROM Account WHERE Id = :accountId];
        return result;
    }
   
    @HttpPost
    global static String doPost(String name, String phone, String website) {
        system.debug('post method rest');
        Account account = new Account();
        account.Name = name;
        account.phone = phone;
        account.website = website;
        insert account;
        system.debug(account);
        return account.Id;
    }
    
    @HttpPut
     global static String updateAccount(String Id, String NewName) {
         system.debug('put method rest');
       Account a = [ Select ID, Name from Account where Id= :Id];
       a.Name = NewName;
       update a;
    
   return 'Account Updated';
 }
    
   
    
}