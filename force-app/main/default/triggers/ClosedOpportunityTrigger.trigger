trigger ClosedOpportunityTrigger on Opportunity  (after insert, after update) {

    List<Task> tasksList = new List<Task>();

    for (Opportunity opp : trigger.new) {
        if (opp.StageName == 'Closed Won'){
            Task tt = new Task(
                whatid=opp.id,
                Status = 'Active',
                Subject = 'Follow Up Test Task',
                ActivityDate = system.Today());
            tasksList.Add(tt);
        }
    }
    if (tasksList.size() > 0) {
        insert tasksList;
    }
}