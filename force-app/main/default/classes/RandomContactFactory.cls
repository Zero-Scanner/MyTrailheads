public class RandomContactFactory {
   
   public static List<Contact> generateRandomContacts(Integer quantityCont, String lastNameCont){
       
       List<Contact> contList = new List<Contact>();
        for(Integer i=0; i<quantityCont; i++){
            contList.add(new Contact(FirstName='Test '+ i, LastName = lastNameCont));
        }
       return contList;
   }
}