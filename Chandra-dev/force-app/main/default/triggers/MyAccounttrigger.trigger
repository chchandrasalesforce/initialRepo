trigger MyAccounttrigger on Account (before insert) {

  if(trigger.isInsert)
   {
     for(Account a:Trigger.New)
     {
            System.assertEquals('MyTutorialRack', a.Name); 
            System.assertEquals('12345678', a.AccountNumber);
            System.assertEquals(100, a.numberofemployees);
            System.assertEquals(200, a.annualrevenue);
     }

   }

}