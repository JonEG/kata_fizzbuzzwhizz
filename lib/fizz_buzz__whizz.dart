class FizzBuzzWhizz {
  static String getStringTranslation(
    int number, {
    int firstDivisor = 3,
    int secondDivisor = 5,
    int thirdDivisor = 7,
  }) {
    bool isDivisibleByFirstDivisor = false,
        isDivisibleBySecondDivisor = false,
        isDivisibleByThirdDivisor = false;

    try {
      isDivisibleByFirstDivisor = number % firstDivisor == 0;
      isDivisibleBySecondDivisor = number % secondDivisor == 0;
      isDivisibleByThirdDivisor = number % thirdDivisor == 0;
    } catch (e) {
      //this is the only integer that could trigger an exception
      return "0 is an invalid divisor";
    }

    if (isDivisibleByFirstDivisor &&
        isDivisibleBySecondDivisor &&
        isDivisibleByThirdDivisor) {
      return "FizzBuzzWhizz";
    } else if (isDivisibleBySecondDivisor && isDivisibleByThirdDivisor) {
      return "BuzzWhizz";
    } else if (isDivisibleByFirstDivisor && isDivisibleByThirdDivisor) {
      return "FizzWhizz";
    } else if (isDivisibleByThirdDivisor) {
      return "Whizz";
    } else if (isDivisibleByFirstDivisor && isDivisibleBySecondDivisor) {
      return "FizzBuzz";
    } else if (isDivisibleByFirstDivisor) {
      return "Fizz";
    } else if (isDivisibleBySecondDivisor) {
      return "Buzz";
    }
    return number.toString();
  }
}
