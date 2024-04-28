public class mycontrollerextension {

private final account acct;

    public mycontrollerextension(ApexPages.StandardController controller) {
    this.acct=(Account)controller.getRecord();
    }
    
    public string getgreeting()
    {
    return 'hello '+acct.name+' ( '+acct.id+ ' )';   
    }

}