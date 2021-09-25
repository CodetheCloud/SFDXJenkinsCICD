public class SOAPAPI {

    
    public static void Callout(){
        
    	GoodAPI.CalculatorSoap  call = new  GoodAPI.CalculatorSoap();
         Integer n1 = 5;
         Integer n2 = 6;
        
        integer res1 = call.Multiply(n1, n2);
        system.debug('Multiply = '+ res1);
        
        
        integer res2 = call.Subtract(n1, n2);
        system.debug('Subtract = '+ res2);
    }
    
    
}