public class VFCalcController {


	public integer num1 {get; set;}
    public integer num2 {get; set;}
    public double result {get; set;}
     public string operation {get; set;}
    
    public void calculation(){
        system.debug('my calc method');
        system.debug('num1 =' + num1);
        system.debug('num2 =' + num2);
        system.debug('operation =' + operation);
        
        if(operation.contains('abc')){
            	 Apexpages.Message ss = new apexpages.Message(apexpages.Severity.confirm,  'this is not good');
 				apexpages.addmessage(ss);
        }
        
        
        if(operation.contains('add')){
            	result= num1 + num2;
            Apexpages.Message ss = new apexpages.Message(apexpages.Severity.confirm,  'add');
 				apexpages.addmessage(ss);
        }
        
        if(operation.contains('sub')){
            result= num1 - num2;
            Apexpages.Message ss = new apexpages.Message(apexpages.Severity.confirm,  'sub');
 				apexpages.addmessage(ss);
        }
        
    }
}