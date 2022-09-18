///Loops

import 'dart:math';

void main() {
  /// While loops
  // Infinite loop
  // while (true) { }

  var sum = 1;
  print('sum: $sum');
  while (sum < 10) {
    sum += 4;
    print('sum: $sum');
  }
  //The While loop will stop when the sum is greater the 10

  /// Do-while loops
  /*This is kind of while loop in which the condition is 
    evaluated at the of the loop rather then the beginning.
    So the do-while loop is executed atleast once.*/
  sum = 1;
  print('sum: $sum');
  do {
    sum += 4;
    print('sum: $sum');
  } while (sum < 10);
  //In do-while loop we have to put semicolon at the end of
  //while loop.

  /// Comparing while and do-while loops
  sum = 11;
  while (sum < 10) {
    sum += 4;
  }
  print('while loop sum: $sum');

  sum = 11;
  do {
    sum += 4;
  } while (sum < 10);
  print('do-while loop sum: $sum');

  /// Breaking out of a loop
  /**Sometime you'll need to break out of loop.You can easily 
   * do it with break statement.the break statement immediately
   * stops the execution of the loop and continues on to code 
   * that follow the loop.*/
  sum = 1;
  print('sum: $sum');
  while (true) {
    sum += 4;
    print('sum: $sum');
    if (sum > 10) {
      break;
    }
  }
  /*Here the condition is true so it will iterate till infinity.
   But the break statement will break the loop once the sum is 
   greater than 10*/

  /// A random interlude
  /**Random Interlude is able to generate random numbers. 
   * And Dart provides this functionality in the dart:math
   * library */
  final random = Random();
  while (random.nextInt(6) + 1 != 6) {
    print('Not a six!');
  }
  print('Finally, you got a six!');

  /// For loops
  /// For loops is used to run the code for fixed number of times.
  /// Below is simple for loop.
  for (var i = 0; i < 5; i++) {
    print(i);
  }

  ///Continue is used to skip the ongoing iteration in the loops.
  for (var i = 0; i < 5; i++) {
    if (i == 2) {
      continue;
    }
    print(i);
  }

  /// For-in loops
  /// For-in doesn't contains counter variable.
  const myString = 'I Love Dart';
  for (var codePoint in myString.runes) {
    print(String.fromCharCode(codePoint));
  }

  /// For-each loops
  /// For-each is simpler version of for-in loop.
  print("For-Each");
  const myNumbers = [1, 2, 3, 4, 5];
  myNumbers.forEach((number) => print(number));

  ///Another way to use for-each loop.
  // myNumbers.forEach((number) {
  //   print(number);
  // });

  ///Mini-Exercise:-

  ///Mini-exercise 1
  ///
  /// Create a variable named `counter` and set it equal to `0`. Create a
  /// `while` loop with the condition `counter < 10`. The loop body should
  /// print out "counter is X" (where X is replaced with the value of
  /// `counter`) and then increment `counter` by 1.
  var counter = 0;
  while (counter < 10) {
    print('counter is $counter');
    counter++;
  }

  ///Mini-exercise 2
  ///
  /// Write a `for` loop starting at `1` and ending with `10` inclusive. Print
  /// the square of each number.
  for (var i = 1; i <= 10; i++) {
    print(i * i);
  }

  ///Mini-exercise 3
  ///
  /// Write a `for-in` loop to iterate over the following collection of numbers.
  /// Print the square root of each number.
  ///
  /// ```
  /// const numbers = [1, 2, 4, 7];
  /// ```
  // Remember to import 'dart:math';
  const numbers = [1, 2, 4, 7];
  for (var number in numbers) {
    print(sqrt(number));
  }

  ///Mini-exercise 4
  ///
  /// Repeat Mini-exercise 3 using a `for-each` loop.
  numbers.forEach((number) => print(sqrt(number)));

  ///Challenges:-
  /// Challenge 1: Find the error
  ///
  /// What's wrong with the following code?
  ///
  /// const firstName = 'Bob';
  /// if (firstName == 'Bob') {
  ///   const lastName = 'Smith';
  /// } else if (firstName == 'Ray') {
  ///   const lastName = 'Wenderlich';
  /// }
  const firstName = 'Bob';
  var lastName = ''; // `lastName` was declared in the `if` statement scope
  //but was used in the parent scope.
  if (firstName == 'Bob') {
    lastName = 'Smith';
  } else if (firstName == 'Ray') {
    lastName = 'Wenderlich';
  }
  final fullName = firstName + ' ' + lastName;
  print(fullName);
}
