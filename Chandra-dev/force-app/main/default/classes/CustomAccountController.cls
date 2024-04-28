public class CustomAccountController {
    
    public static Account fetchAccountRecords(){
        
        List<Account> a = [select id from account Limit 1];
        
        List<String> aid = new List<String>();
        
        for (Account acc:a)
        {
            aid.add(acc.id);
        }
        FutureController.foobar(aid);
        return null;
    }

}