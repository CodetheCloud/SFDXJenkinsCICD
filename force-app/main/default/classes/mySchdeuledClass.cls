public class mySchdeuledClass implements Schedulable{

    public void execute(SchedulableContext ctxany) {
         //You can use thid block to run your apex code at specific time.
               system.debug('just do something');
        
        
    }
    
}