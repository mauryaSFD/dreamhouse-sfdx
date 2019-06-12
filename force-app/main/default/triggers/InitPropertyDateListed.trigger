trigger InitPropertyDateListed on Property__c (before insert) {

    /*working the fix for drem house project 
    // Testing done with git 
        Integer min = 50;
        Integer max = 100;
    
    */

    /* 
       For demo purpose: when properties are added, generate a random value for Date_Listed__c 
       (between 5 and 50 days ago)
    */

    Integer min = 5;
    Integer max = 50;

    for (Property__c property : Trigger.New) {
        
        if (property.Date_Listed__c == null) {
            property.Date_Listed__c = system.today().addDays((Integer) - (Math.random() * (max - min) + min));
        } 
        
    }

}