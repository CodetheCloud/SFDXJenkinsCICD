public class myclass2 {

    
      private Account acct;
    
    public myclass2(ApexPages.StandardController stdController){
        
        this.acct = (Account) stdController.getRecord();
    }
    
     public string getShownamvvv(){
        
        return 'Welcome 2' + acct.Name ;
         
    }
}