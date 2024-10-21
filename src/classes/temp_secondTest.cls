@isTest
public class temp_secondTest {
 /*@isTest static void testWarmTemp11() {
    Decimal celsius = temp_second.FahrenheitToCelsius(70);
    System.assertEquals(21.11,celsius);
  }*/
  @isTest static void testFreezingPoint1() {
    Decimal celsius = temp_second.FahrenheitToCelsius(32);
    System.assertEquals(0,celsius);
  }
  @isTest static void testBoilingPoint1() {
    Decimal celsius = temp_second.FahrenheitToCelsius(212);
    System.assertEquals(100,celsius,'Boiling point temperature is not expected.');
  }
  /*@isTest static void testNegativeTemp1() {
    Decimal celsius = temp_second.FahrenheitToCelsius(-10);
    System.assertEquals(-23.33,celsius); 
  }*/
}