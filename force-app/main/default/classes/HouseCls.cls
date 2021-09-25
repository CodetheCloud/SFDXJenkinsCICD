public class HouseCls {

    //Instance Variable ; Memeber Variable 
    public string name;
   	public integer height;
	public integer width;
    public string color;
    public string address;
    public string type;
    
    public HouseCls(string name, integer height, integer width){
         this.name = name;
        this.height = height;
        this.width = width;
    }
    public HouseCls(string name, integer height, integer width, string color, string address, string type){
        this.name = name;
        this.height = height;
        this.width = width;
        this.color = color;
        this.address = address;
        this.type = type;
    }
    
    
    //Functionality ; Method
    public void lightUpLED(){
        //switch on the LED
        
    }
    
    public Boolean ringBell(){
        //ring the bell 
        return true;
    }
    
    public void switchFAN(){
        
    }
    
    public void switchAC(){
        
    }
    
    
    
}