import 'package:flutter_test/flutter_test.dart';
import 'package:kata_fizzbuzzwhizz/fizz_buzz__whizz.dart';

void main() {
  test('Given a number, when divisible by 3, then return "Fizz"', () {
    // Test implementation
    String translation = FizzBuzzWhizz.getStringTranslation(3);

    expect(translation, "Fizz");
  });
}
