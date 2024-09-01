class FizzBuzzWhizz {
  static String getStringTranslation(
    int number, {
    int firstDivisor = 3,
    int secondDivisor = 5,
    int thirdDivisor = 7,
  }) {
    bool isDivisibleByFirstDivisor = number % firstDivisor == 0;
    bool isDivisibleBySecondDivisor = number % secondDivisor == 0;
    bool isDivisibleByThirdDivisor = number % thirdDivisor == 0;

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
