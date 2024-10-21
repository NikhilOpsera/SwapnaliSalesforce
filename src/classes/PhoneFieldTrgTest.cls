@isTest
public class PhoneFieldTrgTest {
    @isTest
    static void testPhoneFieldTrigger() {
        // Test case where Phone is null
        Account accWithNullPhone = new Account(Name = 'Test Account Null Phone');
        try {
            insert accWithNullPhone;
        } catch (DmlException e) {
            System.assert(e.getMessage().contains('You cannot insert account with phone field empty'));
        }
        // Test case where Phone is empty string
        Account accWithEmptyPhone = new Account(Name = 'Test Account Empty Phone', Phone = '');
        try {
            insert accWithEmptyPhone;
        } catch (DmlException e) {
            System.assert(e.getMessage().contains('You cannot insert account with phone field empty'));
        }
        // Test case where Phone is provided
        Account accWithPhone = new Account(Name = 'Test Account With Phone', Phone = '123-456-7890');
        Test.startTest();
        insert accWithPhone; // Should not throw an error
        Test.stopTest();
        System.assertEquals('123-456-7890', accWithPhone.Phone);
    }
}