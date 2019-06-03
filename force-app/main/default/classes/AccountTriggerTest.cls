@isTest
public class AccountTriggerTest {
    @isTest public static void TestCreate200Records(){
        List<Account> accList = new List<Account>();

        for(Integer i = 0; i < 200; i++){
            Account acc = new Account (Name = 'Test Account ' + i, BillingState = 'CA');
            accList.add(acc);
        }

        Test.startTest();
        insert accList;
        Test.stopTest();

        List<Account> lstAccount = [SELECT ShippingState FROM Account];
        for (Account a : lstAccount){
            System.assertEquals('CA', a.ShippingState, 'ERROR');
        }
    }
}