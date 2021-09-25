public class SOSLDemo {

    
    public static void dynamicSOSL(string searchStr){
        //Search Dynamic String in Account, Contact , Opportunity Object Only
        if(searchStr.length() > 1){
            String searchStr1 = '*'  +  searchStr  +  '*';
            String searchQuery = 'FIND \'' + searchStr1 + '\' IN ALL FIELDS RETURNING  Account (Id,Name,type),Contact(name,email),Opportunity(name,StageName)';
            system.debug('searchQuery =' + searchQuery);
            List<List <sObject>> searchList = search.query(searchQuery);  //Dynamic sosl call
            system.debug('searchList = '+searchList);
            
            
        }    
            
   }
    
}