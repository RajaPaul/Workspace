@RestResource(urlMapping='/Accounts/*/contacts')
global   class AccountManager {
	
	 @HttpGet
    global static Account getAccount() {
    	System.debug('HEllO');
        RestRequest request = RestContext.request;
        // grab the caseId from the end of the URL
        String[] splitURI = request.requestURI.split('/');
        String accId = splitURI[splitURI.size()-2];
         
        Account  result = new Account() ;
        
        System.debug('#AccId' + accId);
       
       	List<Account> results =  [SELECT Id, Name ,(SELECT Id,Name From Contacts
        							where AccountId = :accId) from Account where Id=:accId] ;
       
       	
       	if(results.size() > 0){
       		result = results[0];
       	}
       	
       	
        return result;
    
    }
    
}