global class testScheduledApexClass implements Database.Batchable<SObject> {
    global Database.QueryLocator start(Database.BatchableContext Bc){
        return Database.getQueryLocator([select id from Opportunity where StageName = 'closed own']);
    }

    global void execute(Database.BatchableContext Bc, List<Opportunity> scope){
        Database.delete(scope,false);
    }
    global void finish(Database.BatchableContext Bc){

    }
}