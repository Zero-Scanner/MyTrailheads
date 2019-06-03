public with sharing class ContactAndLeadSearch {
    
    public String searchWord { get; set;}

    public static List<List<SObject>> searchContactsAndLeads(String searchWord){

        List<List<sObject>> searchList = [FIND : searchWord IN NAME FIELDS 
            RETURNING Contact(LastName), Lead(LastName)];
        
        return searchList;
    }
}