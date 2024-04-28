public class accountcustomcontroller {

    public PageReference save() {
    update account;
        return null;
    }

public final Account account;

public accountcustomcontroller ()
{

Account = [select id,name,site from account where id=: ApexPages.CurrentPage().GetParameters().get('Id')];
}

Public Account getAccount()
{
return account;
}
}