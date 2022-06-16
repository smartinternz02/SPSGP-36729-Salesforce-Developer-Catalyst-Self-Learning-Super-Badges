public class StringArrayTest {
   

    public static List<String> generateStringArray(Integer n) {
        List<String> TestList = new List<String>();
        for(Integer i=0;i<n;i++) {
            TestList.add('Test ' + i);
            System.debug(TestList[i]);
        }

    return TestList;
    }
}