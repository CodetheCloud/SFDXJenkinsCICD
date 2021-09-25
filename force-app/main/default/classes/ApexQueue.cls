public class ApexQueue implements Queueable {

    list<account> listac ; 
    
    
    //constructor 
    public ApexQueue(list<account> listparam){
        this.listac = listparam;
    }
    
    public void execute(QueueableContext context) {
        //your async code
       system.debug(listac);
       
        for(Account ac: listac){
            
        }
        
      
    }
    
}