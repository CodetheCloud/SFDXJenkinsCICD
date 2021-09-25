public class conHelp {
     public static Boolean isFirstTime = true;

    public static void upcon(list<contact> listcon){
        
        map<id,string> acAddMap = new map<id,string>();
        set<id> currConID = new set<id>();
    
        for(Contact con: listcon){
            if(con.AccountId != null){
            	currConID.add(con.Id);  //to avoid the current record update
                acAddMap.put(con.AccountId, con.address__c);   
            }
            
        }
    
        system.debug('acAddMap' + acAddMap);
        system.debug('currConID'+ currConID);
        
        list<account> listac = [select id, name, address__c, (select id, name, address__c from contacts) from account where id in: acAddMap.keySet()];
      
        system.debug('list ac = '+ listac);
    
        list<contact> listconToUpdate = new list<contact>();
        
        for(Account ac: listac){
            ac.address__c = acAddMap.get(ac.Id);
            
            for(contact con: ac.contacts){
                if(! currConID.contains(con.Id) ){  //ignoring the current updated rec
                    system.debug(con);
                    con.address__c = acAddMap.get(ac.Id);
                    system.debug(con);
                    listconToUpdate.add(con); 
                }
                
            }
        }
        system.debug('update ' + listac);    
        update listac; 
        update listconToUpdate;
    
    }
}