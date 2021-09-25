public class CarFactory {
    public string name; 
    public string color; 
    public integer weight;
    public string model;
    public string hp;
    public string type;
    
    

    
    public CarFactory(string pname, string pcolor, integer pweight, string pmodel){
        system.debug('its constructor');
        
		this.name = pname;
        this.color= pcolor;
        this.weight = pweight;
        this.model = pmodel;
        
        
    }
    
   
  
    
    public string doStart(){
        //Your code logic to start the car
        
        system.debug('total weight of car is ' + this.weight);
        system.debug('we are starting the car model '+ this.model);
        
        return 'the car has started';
    }
    
    public void doStop(){
       system.debug('do stop');
        
    }
    
    public void doPlayMusic(){
        
        
    }
    
    public void doStopMusic(){
       
        
    }
    
    public static integer doAddition(integer a, integer b){
       integer res = a+b;
       return res;
        
    }
    
    

}