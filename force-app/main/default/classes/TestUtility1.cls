@isTest  //test class
public class TestUtility1 {

    
    
    @isTest(SeeAllData=true) 
    static void testSOQLDemocls(){
        
        //we will test another method
        list<account> listac = [select id, name from account];
        system.debug(listac);
        system.debug(listac.size());
       
    }
    
    
   
}