public class Opptylistcontr {

public ApexPages.StandardSetController opps{
get{
   if(opps == null)
   {
   opps = new ApexPages.StandardSetController(Database.getQueryLocator([select id,name,CloseDate,amount from opportunity]));
   }
   return opps;
}
set;
}

    public list<Opportunity> getOpportunities() {
        return (list<Opportunity>)opps.getRecords();
    }


}