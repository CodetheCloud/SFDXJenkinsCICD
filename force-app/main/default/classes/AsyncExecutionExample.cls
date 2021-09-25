public class AsyncExecutionExample implements Queueable{
    
    list<Account> listAc; 
    
    
    public AsyncExecutionExample(list<Account> listacParam ){
        this.listAc = listacParam;
    }
    
    public void execute(QueueableContext context) {
        //your async code
         system.debug('my queueable class'+ listAc);
         Account a = new Account(Name='Acme',Phone='(415) 555-1212');
         insert a;   
        
    }
    
}