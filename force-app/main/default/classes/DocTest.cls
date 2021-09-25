@isTest
public class DocTest {
    
    @isTest 
    static void myTest() {
        //Checking the functionality (unit testing) // developer
        //Code Coverage
        
        Doctor__c doc  = new Doctor__c();
        doc.Name = 'test Doc';
        insert doc;  // before insert and after insert 
        
        
        
    }

}