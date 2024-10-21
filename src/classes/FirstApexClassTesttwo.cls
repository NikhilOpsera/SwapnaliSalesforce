@isTest
public class FirstApexClassTesttwo {
    @isTest
    static void testGetCalculatedValue() {
        
        FirstAppexClass.myValue = 0;
        // Act
        Integer result = FirstAppexClass.getCalculatedValue();
        // Assert
        System.assertEquals(10, result, 'Incorrect calculated value');
    }
    @isTest
    static void testMultipleGetCalculatedValueCalls() {
        // Arrange
        FirstAppexClass.myValue = 0;
        // Act
        Integer result1 = FirstAppexClass.getCalculatedValue();
        Integer result2 = FirstAppexClass.getCalculatedValue();
        // Assert
        System.assertEquals(10, result1, 'Incorrect calculated value for first call');
        System.assertEquals(20, result2, 'Incorrect calculated value for second call');
    }
    @isTest
    static void testStringInitialization() {
        // Act
        String str = FirstAppexClass.myString;
        // Assert
        System.assertEquals('', str, 'String initialization failed');
    }
}