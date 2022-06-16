public class ContactAndLeadSearch {

    //a public static method that accepts an incoming string as a parameter
    public static List<List<sObject>> searchContactsAndLeads (String incoming) {
    		//write a SOSQL query to search by lead or contact name fields for the incoming string.
  		List<List<sObject>> searchList = [FIND :incoming IN NAME FIELDS
                   RETURNING Contact(FirstName,LastName),Lead(FirstName,LastName)];
		//return the list of the same kind
		return searchList;
	}       
}