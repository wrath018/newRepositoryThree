@IsTest
public class AccountFetcherTest1 {
    @IsTest
    public static void testFetchAllAccounts() {
        // Create test data
        List<Account> testAccounts = new List<Account>();
        for (Integer i = 0; i < 5; i++) {
            Account acc = new Account(Name = 'Test Account ' + i);
            testAccounts.add(acc);
        }
        insert testAccounts;

        // Call the method to fetch accounts
        List<Account> fetchedAccounts = AccountFetcher1.fetchAllAccounts();

        // Verify the results
        System.assertEquals(testAccounts.size(), fetchedAccounts.size(), 'Number of fetched accounts should match the number of test accounts');
        for (Integer i = 0; i < testAccounts.size(); i++) {
            Account testAccount = testAccounts[i];
            Account fetchedAccount = fetchedAccounts[i];
            System.assertEquals(testAccount.Id, fetchedAccount.Id, 'Account Id should match');
            System.assertEquals(testAccount.Name, fetchedAccount.Name, 'Account Name should match');
            // Add additional assertions for other fields if necessary
        }
    }
}