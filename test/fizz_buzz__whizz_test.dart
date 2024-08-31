import 'package:flutter_test/flutter_test.dart';
import 'package:kata_fizzbuzzwhizz/fizz_buzz__whizz.dart';

void main() {
  test('Given a number, when divisible by 3, then return "Fizz"', () {
    String translation;

    // Test implementation
    translation = FizzBuzzWhizz.getStringTranslation(3);
    expect(translation, "Fizz");
  });
  test('Given a number, when divisible by 5, then return "Buzz"', () {
    String translation;

    // Test implementation
    translation = FizzBuzzWhizz.getStringTranslation(5);
    expect(translation, "Buzz");
  });
  test('Given a number, when divisible by 7, then return "Whizz"', () {
    String translation;

    // Test implementation
    translation = FizzBuzzWhizz.getStringTranslation(7);
    expect(translation, "Whizz");
  });
  test('Given a number, when divisible by 3 and 5, then return "FizzBuzz"', () {
    String translation;

    // Test implementation
    /**
     * This value is giving us problems because it is dividible by our
     * three divisors 3, 5 and 7
     * 
     * translation = FizzBuzzWhizz.getStringTranslation(0);
     * expect(translation, "FizzBuzz");
     */

    translation = FizzBuzzWhizz.getStringTranslation(3 * 5);
    expect(translation, "FizzBuzz");
  });
  test(
      'Given a number, when divisible by 3, 5 and 7, then return "FizzBuzzWhizz"',
      () {
    String translation;

    // Test implementation
    translation = FizzBuzzWhizz.getStringTranslation(0);
    expect(translation, "FizzBuzzWhizz");
  });

  test(
      'Given a number, when no divisible by our divisors, then return the number as a string',
      () {
    // Test implementation
    String translation = FizzBuzzWhizz.getStringTranslation(1);

    expect(translation, "1");
  });
}
