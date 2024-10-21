@isTest
public class ApexClassSwapnaliAug7Test {
    @isTest
    static void testGetCalculatedValue() {
        
        ApexClassSwapnaliAug7.myValue = 0;
        // Act
        Integer result = ApexClassSwapnaliAug7.getCalculatedValue();
        // Assert
        System.assertEquals(10, result, 'Incorrect calculated value');
    }
    @isTest
    static void testMultipleGetCalculatedValueCalls() {
        // Arrange
        ApexClassSwapnaliAug7.myValue = 0;
        // Act
        Integer result1 = ApexClassSwapnaliAug7.getCalculatedValue();
        Integer result2 = ApexClassSwapnaliAug7.getCalculatedValue();
        // Assert
        System.assertEquals(10, result1, 'Incorrect calculated value for first call');
        System.assertEquals(20, result2, 'Incorrect calculated value for second call');
    }
    @isTest
    static void testStringInitialization() {
        // Act
        String str = ApexClassSwapnaliAug7.myString;
        // Assert
        System.assertEquals('', str, 'String initialization failed');
    }
}