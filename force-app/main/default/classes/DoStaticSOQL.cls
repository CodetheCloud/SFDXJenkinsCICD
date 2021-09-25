public class DoStaticSOQL {

    
    public static void doDymanic(string subStr, integer limitstr){
        //Dynamic SOQL
        string soqlStr = 'select ' + subStr + ' from Account limit '+ limitstr;
        system.debug('my soql = '+ soqlStr );
        list<Account> listAc = Database.Query(soqlStr);
        system.debug(listAc);
        
    }
    
    
    public static void doStatic(){
        //Static SOQL 
       list<Account> listAccount = [select id, name from Account];  //Single dim of account obj record.
       system.debug(listAccount);
        
    }
    
    
}