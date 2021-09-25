trigger BookTrigger on Book__c (before update, after update) {
	system.debug('calling book trigger ++');
   	system.debug(Trigger.new);  //list = list<book__c> = new version of record
    system.debug(Trigger.old);  //list = list<book__c> = old version of record
    system.debug(Trigger.size);
    system.debug('calling book trigger ==');
}