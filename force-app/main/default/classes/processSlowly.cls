public class processSlowly implements Database.Batchable<sObject>{

        public Database.QueryLocator start(Database.BatchableContext bc) {
            
            //Account
            system.debug('start batch apex');
             string str = 'select id, name from account';
            return Database.getQueryLocator(str); 
        }
    	
    	public void execute(Database.BatchableContext bc, List<Account> accList) {
            system.debug(accList);
            for(Account ac: accList){
                system.debug(ac);
            }
        }
    
        public void finish(Database.BatchableContext bc) {
            system.debug('finish method');
        }
        
    
}