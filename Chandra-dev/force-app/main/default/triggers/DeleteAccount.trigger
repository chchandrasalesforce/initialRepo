trigger DeleteAccount on Account (before delete) {

if(Trigger.isBefore)
{
  if(Trigger.isDelete)
  {
     for(Account a:Trigger.old)
     {
       if(a.name != 'okToDelete')
       {
       a.addError ('You cannot Delete this account record');
       }
     }  
  }
}

}