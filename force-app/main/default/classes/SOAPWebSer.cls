global class SOAPWebSer {

    webservice static ID createContact(string lname){
        Contact con = new Contact();
        con.lastname =lname;
        insert con;
        return con.Id;
        
        
    }
}