import 'package:flutter_test/flutter_test.dart';
import 'package:kata_fizzbuzzwhizz/fizz_buzz__whizz.dart';

void main() {
  group("Tests for fizz_buzz_whizz", () {
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
    test('Given a number, when divisible by 3 and 5, then return "FizzBuzz"',
        () {
      String translation;

      // Test implementation
      translation = FizzBuzzWhizz.getStringTranslation(3 * 5);
      expect(translation, "FizzBuzz");
    });
    test('Given a number, when divisible by 3 and 7, then return "FizzWhizz"',
        () {
      String translation;

      // Test implementation
      translation = FizzBuzzWhizz.getStringTranslation(3 * 7);
      expect(translation, "FizzWhizz");
    });
    test('Given a number, when divisible by 5 and 7, then return "BuzzWhizz"',
        () {
      String translation;

      // Test implementation
      translation = FizzBuzzWhizz.getStringTranslation(5 * 7);
      expect(translation, "BuzzWhizz");
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
  });
}
