public class ContactSearch
{
    public static List<Contact> searchForContacts(String LastNameString ,String PostalCodeString )
    {
        List<Contact> listCont = [select Id , Name from contact where LastName =:LastNameString 
                                    and MailingPostalCode =:PostalCodeString ];
        return      listCont ;           
    }
    
}