public class weeklyTask implements schedulable{

    public void execute(SchedulableContext ctxany){
        //You can use this for taks. 
        list<Account> listac = [select id, name from account];
            for(account ac : listac){
                if(ac.Phone.contains('+91')){
                    ac.Description = 'Indian';
                }
            }
        
        update listac;
    }
    
}