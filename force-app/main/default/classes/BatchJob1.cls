public class BatchJob1 implements Database.Batchable<sObject>{
    
    
    public Database.QueryLocator start(Database.BatchableContext bc) {
         
         string soql = 'select id, name from account' ; 
         return Database.getQueryLocator(soql);  
     }
    
     public void execute(Database.BatchableContext bc, List<Account> accList) {
     
         system.debug('accList = '+ accList);
     } 
    
    
    public void finish(Database.BatchableContext bc) {
        
     }
    
	
}