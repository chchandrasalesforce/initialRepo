public class accoutlistcont {

public ApexPages.StandardSetController acct
{
get
{
if(acct == null)
{
acct = new ApexPages.StandardSetController(Database.getQueryLocator([select id,name,AccountNumber from account]));
}
return acct;
}

set;
}

    public List<Account> getAccounts() {
        return (List<Account>)acct.getRecords();
    }

}