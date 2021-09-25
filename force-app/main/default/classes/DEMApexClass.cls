public class DEMApexClass {

        public decimal exp {set;get;}
        public decimal sal {set;get;}
        public decimal bonus {set;get;}
    
        public void calculate(){
            if(exp!=null && exp>0){
                if(exp>5) { 
                    sal=50000; 
                    bonus=(sal*10)/100;
                }
                else { 
                    sal=30000;
                    bonus=sal*0.10;
                }
                Apexpages.Message ss = new apexpages.Message(apexpages.Severity.confirm,'successfully added the salary');
                apexpages.addmessage(ss);
                
            } else{
                apexpages.Message ms=new apexpages.Message(apexpages.Severity.error,'Experience value must be entered');
                apexpages.addmessage(ms);
                }
                }
    
    
}