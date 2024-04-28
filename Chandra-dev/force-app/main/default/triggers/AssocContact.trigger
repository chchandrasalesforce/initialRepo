trigger AssocContact on Account (after insert) {

List<Contact> ObjContact = new List<Contact>();
for (Account a: Trigger.new) {
Contact ObjContactnew = new Contact();
ObjContactnew.firstName=a.Name;
ObjContactnew.lastName=a.Name;
ObjContactnew.AccountId = a.id;
ObjContact.add(ObjContactnew);
}
//insert ObjContact;
}