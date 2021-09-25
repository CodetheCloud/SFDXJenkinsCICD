@isTest
public class TestAcc1 {
    
    @isTest
    public static void testTriggerAcc1(){
       Account a = new Account();
        a.Name ='a1';
        a.Phone='8373379282';
        a.SLA__c ='Gold';
        insert a;
        
        a.SLA__c  = 'Bronze';
        update a;
        
        
         
        Account anew = [select id, name , Description from account where id = : a.ID];
        system.assert(anew.Description == 'From bronze to gold' ,  'not matched');  // it will block/abort the trans. 
        
        //system.assert(condition, msg); 
    }
    
}