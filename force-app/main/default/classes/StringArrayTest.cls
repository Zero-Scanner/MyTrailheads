public with sharing class StringArrayTest {

    public Integer length { get; set; }
    
    public static List<String> generateStringArray(Integer length){
        List<String> stringList = new List<String>();
        
        for (Integer i=0; i < length; i++) {
            String arg = 'Test ' + i;
            stringList.add(arg);
        }
        return stringList;
    }
}