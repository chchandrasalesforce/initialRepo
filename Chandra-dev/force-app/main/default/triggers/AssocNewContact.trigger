trigger AssocNewContact on Account (after insert) {    
    if(AccountTriggerHandler.isFirstTime){
    AccountTriggerHandler.isFirstTime = false;
    List<Contact> contnew = new List<Contact>();   
    for (Account a : trigger.new)
    {
        Contact con = new Contact();
        con.FirstName = a.Name;
        con.LastName = a.Name;
        con.AccountId = a.Id;
        contnew.add(con);        
    }
    insert contnew;  
    system.debug('Testing Trigger from Lowes : '+contnew);
    }
}