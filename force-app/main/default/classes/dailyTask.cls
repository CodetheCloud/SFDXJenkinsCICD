public class dailyTask implements Schedulable{
    
    public void execute(SchedulableContext ctxany){
    	system.debug('process your task');
        processSlowly b1 = new processSlowly();
		Database.executeBatch(b1, 10); //200 is default

    }

}