public class dlete {

    public static void deleteAllChefReviews() {
        // Query all records
        List<ChefReview__c> allReviews = [SELECT Id FROM ChefReview__c];
        
        // Check if there are any records to delete
        if (!allReviews.isEmpty()) {
            // Perform the delete operation
            try {
                delete allReviews;
                System.debug('All ChefReview__c records have been deleted successfully.');
            } catch (DmlException e) {
                System.debug('Error deleting ChefReview__c records: ' + e.getMessage());
                // Optionally, handle more gracefully
            }
        } else {
            System.debug('No ChefReview__c records found to delete.');
        }
    }
}