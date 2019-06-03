public class AccountUtils {
    public static List<Account> accountsByState (String billingSt){

        List<Account> accList = [SELECT Id, Name FROM Account WHERE BillingState =: billingSt];

        return accList;
    }  
}