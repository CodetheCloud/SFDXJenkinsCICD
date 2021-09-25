public with sharing class AccountController {

  
     @AuraEnabled(cacheable=true)
    public static List<Account> findAccountsAndContacts(String searchKey) {
        String key = '%' + searchKey + '%';
        return [SELECT Id, Name, AccountNumber, (select id, name from contacts) FROM Account WHERE Name LIKE :key  LIMIT 100];
    }

}
