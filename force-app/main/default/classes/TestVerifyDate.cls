@isTest
private class TestVerifyDate {
    @isTest static void testVerifyDayAdd29(){
        Date startDay = System.today();
        Date stopDay = startDay.addDays(29);
        Date resultDay = VerifyDate.CheckDates(startDay, stopDay);

        System.assertEquals(stopDay, resultDay);
    }
    @isTest static void testVerifyDayAdd31(){
        Date startDay = System.today();
        Date stopDay = startDay.addDays(31);
        Integer totalDays = Date.daysInMonth(startDay.year(), startDay.month());
        Date lastDay1 = Date.newInstance(startDay.year(), startDay.month(), totalDays); 
        Date resultDay = VerifyDate.CheckDates(startDay, stopDay);

        System.assertEquals(lastDay1, resultDay);
    }
}