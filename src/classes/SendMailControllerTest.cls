/**
 * メール送信失敗処理のテストサンプル
 * © 2013 Force.com Developer
 * ----------------------------------------
 * @createdName      : Taiki,Yoshikawa
 * @lastModifiedName : Taiki,Yoshikawa
 * ----------------------------------------
 */
@isTest
private class SendMailControllerTest {
 
    /**
     * メール送信 テスト
     */
    static testMethod void SendMailControllerTest() {
    
        Test.startTest();
    
        SendMailController cls = new SendMailController();
        cls.doSendMail();
        
        Test.stopTest();
    }
}