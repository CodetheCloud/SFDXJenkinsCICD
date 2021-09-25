public class SOQLDemo {
    
    public static void showDynamic(string subSTR, integer limitstr){
      	//Dynamic SOQL
        string mySOQLStr = 'select ' + subSTR +  ' from account limit '+ limitstr ;
        system.debug(mySOQLStr);  //string shoule be valid soql query
     	list<account> anythingisfine =	Database.Query(mySOQLStr);
        system.debug(anythingisfine);
    }
    
    
    public static void createContact(list<Account> listac){
      list<account> litacc  =    listac;
        for(Account ac: litacc){
            ac.name = 'check';
        }
        update litacc;
    }

}