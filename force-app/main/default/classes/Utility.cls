public class Utility {

    public static void checkFile(Id recID){
        
       //get the contentDocumentLink 
       list<ContentDocumentLink> myconDocList = [select  ContentDocumentId , LinkedEntityId  from ContentDocumentLink where LinkedEntityId = :recID] ;
       system.debug('myconDocList ='+ myconDocList); 
        
		set<id> conDocID = new set<id>();

        for(ContentDocumentLink cdl : myconDocList){
            conDocID.add(cdl.ContentDocumentId);
        }        
        
        //get contentDocument ID from contentversion Obj
        list<ContentVersion> conVer = [select  ContentDocumentId, Id, FileType, Checksum,ContentBodyId ,ContentLocation,
                           Title,VersionData,VersionNumber from ContentVersion where ContentDocumentId IN : conDocID];
        
        system.debug('conVer ='+ conVer);
        
        for(ContentVersion cVer :conVer){
            blob b = cVer.VersionData;
            system.debug('blob =' + b);
            
            system.debug('Title = ' + cVer.title);
            system.debug('fileType = ' + cVer.FileType);  
            
            if(cVer.FileType == 'TEXT'){
               String s = EncodingUtil.base64Decode(EncodingUtil.base64Encode(b)).toString();
			   system.debug('att@@'+s);   
            }
            
            if(cVer.FileType == 'JPG'){
             	blob image = cVer.VersionData;
				system.debug('its jpg = '+ image);
                
                string s = EncodingUtil.base64Encode(image);
                
                system.debug('decode = '+ s);
                List<Messaging.SingleEmailMessage> mails = new List<Messaging.SingleEmailMessage>();
                Messaging.SingleEmailMessage mail =  new Messaging.SingleEmailMessage();
                
                List<String> sendTo = new List<String>();
                sendTo.add('tilakraj1456@gmail.com');
                  
                mail.setToAddresses(sendTo);
                mail.setReplyTo('tilakraj1456@gmail.com');
     			mail.setSenderDisplayName('Official Bank of Nigeria');
                
                mail.setSubject('URGENT PROPOSAL');
                String body = EncodingUtil.base64Encode(image);
                mail.setHtmlBody(body);
                
                mails.add(mail);
                
                Messaging.sendEmail(mails);
                
            }
            
        }
        
        
    }
   
}