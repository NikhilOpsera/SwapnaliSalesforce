/**
 * An apex page controller that exposes the site forgot password functionality
 */
public with sharing class ForgotPassword {
    public String username {get; set;}   
       //Dev-1 changes
    public ForgotPassword() {}
    
    public PageReference forgotPassword() {
        boolean success = Site.forgotPassword(username);
        PageReference pr = Page.ForgotPasswordConfirm;
        pr.setRedirect(true);
        
        if (success) {              
            return pr;
        }
        return null;
    }
    //Dev2 changes
}