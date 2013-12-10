/**
 * メール送信失敗処理のテストサンプル
 * © 2013 Force.com Developer
 * ----------------------------------------
 * @createdName      : Taiki,Yoshikawa
 * @lastModifiedName : Taiki,Yoshikawa
 * ----------------------------------------
 */
public with sharing class SendMailController {
 
    /**
     * コンストラクタ
     */
    public SendMailController() {
    
    }
    
    /**
     * メール送信
     */
    public void doSendMail() {
    
        Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
        email.setToAddresses(new String[] { 'adminacme.com' });
        email.setSubject('my subject');
        email.setPlainTextBody('plain text body');
        
        List<Messaging.SendEmailResult> results = 
            Messaging.sendEmail(new Messaging.Email[] { email }, false);
            
        if (!results.get(0).isSuccess()) {
            System.StatusCode statusCode = results.get(0).getErrors()[0].getStatusCode();
            String errorMessage = results.get(0).getErrors()[0].getMessage();
        }    
    } 
}