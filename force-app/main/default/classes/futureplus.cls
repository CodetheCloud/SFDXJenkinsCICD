public class futureplus implements Queueable {
    public list<account> acList;
    
    public futureplus(list<account> ac){
        this.acList = ac;
    }
    
    
    public void execute(QueueableContext context) {
        //your async code
        system.debug(acList);
        system.debug('2');
        system.debug('3');
        system.debug('4');
        system.debug('5');
    }

}