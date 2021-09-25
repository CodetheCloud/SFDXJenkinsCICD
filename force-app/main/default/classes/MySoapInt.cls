public class MySoapInt {

    
    public static void doCall(){
        soapCalc.CalculatorSoap objI = new soapCalc.CalculatorSoap();
        
        Integer a = 5;
        Integer b = 6;
        
        Integer add = objI.Add(a, b);
        system.debug('res = '+ add);
        
        
        
        
    }
    
    
}