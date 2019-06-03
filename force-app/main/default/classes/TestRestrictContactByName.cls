@isTest
private class TestRestrictContactByName {
  
  @isTest static void ContactTestMethod(){
      Contact ccc = new Contact(LastName = 'INVALIDNAME');
      insert ccc;
  }
}