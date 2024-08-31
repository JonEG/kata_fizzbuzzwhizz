# Kata: FizzBuzzWhizz

## Problem Statement:

Create a function `fizz_buzz_whizz` that takes a single integer input, `n`, and returns a string based on the following rules:

1. If the number is divisible by 3, return "Fizz".
2. If the number is divisible by 5, return "Buzz".
3. If the number is divisible by 7, return "Whizz".
4. If the number is divisible by both 3 and 5, return "FizzBuzz".
5. If the number is divisible by both 3 and 7, return "FizzWhizz".
6. If the number is divisible by both 5 and 7, return "BuzzWhizz".
7. If the number is divisible by 3, 5, and 7, return "FizzBuzzWhizz".
8. If the number is not divisible by any of these, return the number as a string.

## Examples:
- `fizz_buzz_whizz(3)` should return `"Fizz"`.
- `fizz_buzz_whizz(5)` should return `"Buzz"`.
- `fizz_buzz_whizz(7)` should return `"Whizz"`.
- `fizz_buzz_whizz(15)` should return `"FizzBuzz"`.
- `fizz_buzz_whizz(21)` should return `"FizzWhizz"`.
- `fizz_buzz_whizz(35)` should return `"BuzzWhizz"`.
- `fizz_buzz_whizz(105)` should return `"FizzBuzzWhizz"`.
- `fizz_buzz_whizz(2)` should return `"2"`.

## Optional Enhancements:
- Add a configuration option to change the divisors, allowing the user to modify the rules (e.g., instead of 3, 5, and 7, allow divisors like 4, 6, and 9).
- Implement edge cases, like testing for negative numbers or very large numbers.

## Steps for TDD:

1. **Write a failing test**: Start by writing a test for the simplest case, like `fizz_buzz_whizz(3)` returning `"Fizz"`.
2. **Make the test pass**: Implement just enough code to pass the test.
3. **Refactor**: Clean up the code without changing its behavior.
4. **Write the next failing test**: Add another test for a new case, like `fizz_buzz_whizz(5)` returning `"Buzz"`.
5. **Repeat the cycle**: Continue until all the rules are implemented and all tests pass.

