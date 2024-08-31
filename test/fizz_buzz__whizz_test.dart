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

  test('Given a number, when divisible by 3 and 5, then return "FizzBuzz"', () {
    String translation;

    // Test implementation
    translation = FizzBuzzWhizz.getStringTranslation(0);
    expect(translation, "FizzBuzz");

    translation = FizzBuzzWhizz.getStringTranslation(3 * 5);
    expect(translation, "FizzBuzz");
  });

  test(
      'Given a number, when no divisible by our divisors, then return the number as a string',
      () {
    // Test implementation
    String translation = FizzBuzzWhizz.getStringTranslation(1);

    expect(translation, "1");
  });
}
