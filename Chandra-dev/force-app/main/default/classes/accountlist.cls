public class accountlist {
    
    public list<account> acclist;
    
        public accountlist ()
        {
            acclist = [select id,name,industry,type from account];
        }

    public list<account> getAccountList()
    {
      return acclist;  
        
    }
}