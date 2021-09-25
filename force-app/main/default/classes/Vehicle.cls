public class Vehicle {
//define the attribute of our object
    public string name;
    public string color;
    public integer weight;
    public string model;
    public integer power;
    public string unitofWeight;
   
    public Vehicle(string name, string color, integer weight, string unitofWeight ,string model, integer power){
        system.debug('constructor called =');
        this.name = name;
        this.color= color;
        this.weight = weight;
        this.model = model;
        this.power  =power;
        this.unitofWeight = unitofWeight;
}


    //define the functionality
   public void doStart(){
       system.debug('starting car = '+this.name);
       if (this.color=='red')  {  
           playMusic();      
       }
       
    }
   
	public static void someMagic(){
           system.debug('mail send');
    }    
    
    public void doStop(){
         system.debug('stoping car = '+this.name);
    }
    
     public void playMusic(){
       
           system.debug('play music in car = '+this.name);
    }
    
    public void stopMusic(){
       
           system.debug('stop music in car = '+this.name);
    }
    
}