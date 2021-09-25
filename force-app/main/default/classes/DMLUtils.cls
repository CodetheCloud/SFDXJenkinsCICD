public class DMLUtils {

    public static void testDML(){
        //api_name_sObject
           
       list<Doctor__c>  anyVar = [select id, name from Doctor__c];  
       system.debug(anyVar.size());

    }
    
}