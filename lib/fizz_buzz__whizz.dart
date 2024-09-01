class FizzBuzzWhizz {
  static String getStringTranslation(
    int number, {
    int firstDivisor = 3,
    int secondDivisor = 5,
    int thirdDivisor = 7,
  }) {
    bool isDivisibleByFirstDivisor = number % firstDivisor == 0;
    bool isDivisibleByFive = number % 5 == 0;
    bool isDivisibleBySeven = number % 7 == 0;

    if (isDivisibleByFirstDivisor && isDivisibleByFive && isDivisibleBySeven) {
      return "FizzBuzzWhizz";
    } else if (isDivisibleByFive && isDivisibleBySeven) {
      return "BuzzWhizz";
    } else if (isDivisibleByFirstDivisor && isDivisibleBySeven) {
      return "FizzWhizz";
    } else if (isDivisibleBySeven) {
      return "Whizz";
    } else if (isDivisibleByFirstDivisor && isDivisibleByFive) {
      return "FizzBuzz";
    } else if (isDivisibleByFirstDivisor) {
      return "Fizz";
    } else if (isDivisibleByFive) {
      return "Buzz";
    }
    return number.toString();
  }
}
