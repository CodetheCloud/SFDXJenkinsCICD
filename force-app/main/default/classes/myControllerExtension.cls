public class myControllerExtension {

     private Account acct;
    
    public myControllerExtension(ApexPages.StandardController stdController){
        
        this.acct = (Account) stdController.getRecord();
    }
    
    
     public string getGreeting(){
     
        return 'Welcome ' + acct.Name ;
         
    }
    
}