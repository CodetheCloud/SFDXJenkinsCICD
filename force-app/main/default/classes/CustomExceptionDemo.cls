public class CustomExceptionDemo {

    

    
    public static void doCalc(){
        
        
        try{
        	system.debug('try block started');
            Account a = new Account();
            a.name = 'badvalue';
            insert a;
            
            if(a.name == 'badvalue'){
                MyBaseException abc = new MyBaseException('hey you are not allowed');
                throw abc; //
            }
            
            system.debug('it is nice');
            
        }
        catch(MyBaseException exx){
            system.debug(exx);
        }
        	
        system.debug('after catch');
        
        
        
        
    }
    
}