public class ContactSearch {
    public String contLastName { get; set;}
    public String contPostalCode { get; set;}

    public static List<Contact> searchForContacts(String contLastName, String contPostalCode){

        List<Contact> contList = [SELECT Id, Name FROM Contact WHERE LastName =: contLastName AND MailingPostalCode =: contPostalCode];

        return contList;
    }
}