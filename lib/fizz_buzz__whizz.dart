class FizzBuzzWhizz {
  static String getStringTranslation(
    int number, {
    firstDivisor = 3,
    secondDivisor = 5,
    thirdDivisor = 7,
  }) {
    bool isDivisibleByThree = number % 3 == 0;
    bool isDivisibleByFive = number % 5 == 0;
    bool isDivisibleBySeven = number % 7 == 0;

    if (isDivisibleByThree && isDivisibleByFive && isDivisibleBySeven) {
      return "FizzBuzzWhizz";
    } else if (isDivisibleByFive && isDivisibleBySeven) {
      return "BuzzWhizz";
    } else if (isDivisibleByThree && isDivisibleBySeven) {
      return "FizzWhizz";
    } else if (isDivisibleBySeven) {
      return "Whizz";
    } else if (isDivisibleByThree && isDivisibleByFive) {
      return "FizzBuzz";
    } else if (isDivisibleByThree) {
      return "Fizz";
    } else if (isDivisibleByFive) {
      return "Buzz";
    }
    return number.toString();
  }
}
