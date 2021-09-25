public class myExtCtrl {
	private final Account acc ;
    
     public myExtCtrl(ApexPages.StandardController stdController){
        this.acc = (Account) stdController.getRecord();
     }
    
    public string getAccName(){
        return 'Welcome '+ acc.Name;
    }
}