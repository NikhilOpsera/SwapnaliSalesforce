/**
 * An apex page controller that exposes the site forgot password functionality
 */
@isTest 
public with sharing class ForgotPasswordTest {
  	 @isTest(SeeAllData=true) 
    public static void testForgotPasswordController() {
    	// Instantiate a new controller with all parameters in the page
    	ForgotPassword controller = new ForgotPassword();
    	controller.username = 'test@salesforce.com';     	
    	System.assertEquals(controller.forgotPassword(),null); 
    }
}