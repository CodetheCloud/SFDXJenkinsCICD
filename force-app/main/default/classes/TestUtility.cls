@isTest
public class TestUtility {
    
	@isTest
    static void myTest(){
       integer res = Utllity1.doAdd(5, 6);
        system.debug(res);
        system.assert(res == 11, 'not fine');  //it will stop the trans
    }
    
}