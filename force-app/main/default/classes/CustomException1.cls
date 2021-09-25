public class CustomException1 {

    //we will create our own exception class. 
    public class MyBaseException extends Exception {
        
    }
    
    public static void checkCustom(){
        
        Account ac = new Account();
        ac.Name = 'test';
        ac.Phone = '9283746511';
        ac.Website = 'www.google.com';
        insert ac;
        
        try{
            
        
            if (ac.Phone.contains('92')){
                throw new MyBaseException('you can not create account where phone starts with 92');
           
                
            }
        
        }
        catch(MyBaseException ex){
            system.debug(ex);
        }
        
        
    }
    
    
    
}