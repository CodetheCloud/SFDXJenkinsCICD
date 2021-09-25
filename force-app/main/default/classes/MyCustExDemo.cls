public class MyCustExDemo {

    
        public class MyBaseException extends Exception {}
    
    
        public static void doCalc(){
            
            
            try{
                
 			system.debug('try block started');
            Account a = new Account();
            a.name = 'badvalue 213';
            insert a;
              system.debug(a);  
                if(a.name == 'badvalue'){
                   throw new MyBaseException('this is bad value name');
                }
                
             system.debug('try block ends');  

                
            }
            
            catch(MyBaseException ex){
                system.debug(ex);
                
            }
        }
    
    
}