@isTest public class TestVerifyDate {
    private static Date dateToday = date.today();
    private static Integer totalDays = Date.daysInMonth(dateToday.year(), dateToday.month());
    
    @isTest static void testOldDate(){
        Date dateTest = VerifyDate.CheckDates(dateToday, dateToday.addDays(-1));
        System.assertEquals(date.newInstance(dateToday.year(), dateToday.month(), totalDays), dateTest);
    }
    
    @isTest static void testLessThan30Days(){
        Date dateTest = VerifyDate.CheckDates(dateToday, dateToday.addDays(20));
        System.assertEquals(dateToday.addDays(20), dateTest);
    }
    
    @isTest static void testMoreThan30Days(){
        Date dateTest = VerifyDate.CheckDates(dateToday, dateToday.addDays(31));
        System.assertEquals(date.newInstance(dateToday.year(), dateToday.month(), totalDays), dateTest);
    }

}