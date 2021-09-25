@RestResource(urlMapping='/tilakrj1/*')
global class RESTPOSTCallins {

    
    	@HttpPost
        global static String doPost(String name, String phone, String website) {
    	
            Account ac = new Account();
            ac.name =name;
            ac.Phone =phone;
            ac.Website = website;
            insert ac;
            
            return ac.Id;
        
        }
    
    
}