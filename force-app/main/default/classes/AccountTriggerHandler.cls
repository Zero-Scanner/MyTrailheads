public class AccountTriggerHandler {

    public static void CreateAccounts (List<Account> accList) {
        for (Account a : accList) {
            if (a.ShippingState != a.BillingState){
                a.ShippingState = a.BillingState;
            }
        }
    }
}