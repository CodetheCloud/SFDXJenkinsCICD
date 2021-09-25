public class CustExc {
	
    public class MyBaseException extends Exception {
        
    }
    
    public static void doCalc(){
        
        try{
            Account ac = new Account();
            ac.Name = 'badName';
            insert ac;
            
            if(ac.Name == 'badName'){
                     throw new MyBaseException('you can not create badName account');
            }
        }
        catch(MyBaseException ex ){
            system.debug(ex);
            
        }
        
    }
    
}