public class MyApexController {

        public integer num1 {get; set;}
    	public integer num2 {get; set;}
    	public string operation {get; set;}
        public double result {get; set;}
    
    public void calculation(){
        system.debug('calculation method called');
        
        if(  operation.contains('add')  ){
          result = num1 + num2;    
        }
        
        if(  operation.contains('sub')  ){
          result = num1 - num2;    
        }
        
        if(  operation.contains('div')  ){
          result = num1 / num2;    
        }
        
        if(  operation.contains('mul')  ){
          result = num1 * num2;    
        }
        
        
    }
    
    
}