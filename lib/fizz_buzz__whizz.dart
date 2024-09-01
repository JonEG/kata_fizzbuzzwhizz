class FizzBuzzWhizz {
  static String getStringTranslation(
    int number, {
    int firstDivisor = 3,
    int secondDivisor = 5,
    int thirdDivisor = 7,
  }) {
    bool isDivisibleByFirstDivisor = number % firstDivisor == 0;
    bool isDivisibleBySecondDivisor = number % secondDivisor == 0;
    bool isDivisibleBySeven = number % 7 == 0;

    if (isDivisibleByFirstDivisor &&
        isDivisibleBySecondDivisor &&
        isDivisibleBySeven) {
      return "FizzBuzzWhizz";
    } else if (isDivisibleBySecondDivisor && isDivisibleBySeven) {
      return "BuzzWhizz";
    } else if (isDivisibleByFirstDivisor && isDivisibleBySeven) {
      return "FizzWhizz";
    } else if (isDivisibleBySeven) {
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
