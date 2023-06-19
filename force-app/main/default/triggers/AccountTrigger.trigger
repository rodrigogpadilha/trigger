trigger AccountTrigger on Account (before insert, after insert,before update, after update, before delete, after delete) {
System.debug('Trigger old => ' + Trigger.old);
System.debug('Trigger new => ' + Trigger.new);
System.debug('Trigger oldMap => ' + Trigger.oldMap);
System.debug('Trigger newMap => ' + Trigger.newMap);
}