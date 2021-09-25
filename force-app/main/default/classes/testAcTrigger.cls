@isTest
public class testAcTrigger {
    
 
    @isTest
    static void myTest(){
       integer res = Utllity1.doAdd(5, 6);
        system.assert(res == 11, 'not fine');
    }
    
}