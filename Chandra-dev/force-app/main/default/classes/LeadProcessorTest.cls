@isTest
private class LeadProcessorTest {
    
    //Creating 200 lead records to Test
    @TestSetup
    static void setup(){
        List<Lead> leads = new List<Lead>();

        for (Integer i = 0; i < 200; i++) {
            //Adding a new lead to the lead list 
            leads.add(new Lead(LastName='Lead ' + i, Company='Company Number ' + i, Status='Open - Not Contacted'));
        }

        //Inserting the lead list
        insert leads;
    }

    static testMethod void test() {  

        Test.startTest();
        LeadProcessor lp = new LeadProcessor();
        Id batchId = Database.executeBatch(lp);
        Test.stopTest();        

        // after the testing stops, assert records were updated properly
        System.assertEquals(200, [select count() from lead where LeadSource = 'Dreamforce']);

    }
}