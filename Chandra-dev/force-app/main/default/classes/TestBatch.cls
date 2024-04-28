public class TestBatch implements Database.Batchable<SObject>,Database.AllowsCallouts,Database.Stateful {
    
    public Database.QueryLocator start (Database.BatchableContext jobid)
    {
              
        return Database.getQueryLocator('Select id,Name from Account');
        
    }
    
    public void execute(Database.BatchableContext jobid, List<Account> scope)
    {
     List<contact> con = [select id,name from contact where AccountId IN : scope];   
    }
    
    public void finish(Database.BatchableContext jobid)
    {
       //UserBadgeUpsertBatch pI= new UserBadgeUpsertBatch();
        //Database.executeBatch (pI);
    }

}