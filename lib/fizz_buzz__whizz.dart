class FizzBuzzWhizz {
  static String getStringTranslation(int number) {
    if (number % 3 == 0) {
      return "Fizz";
    }
    return number.toString();
  }
}
