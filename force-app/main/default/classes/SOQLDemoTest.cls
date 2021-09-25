@isTest
public class SOQLDemoTest {
    
    
    
    @isTest
    public static void test1(){
        
        list<account> listac = [select id, name from account];
        system.debug(listac);
        system.debug(listac.size());
        
        SOQLDemo.showDynamic(' id, name ', 5);
    }

}