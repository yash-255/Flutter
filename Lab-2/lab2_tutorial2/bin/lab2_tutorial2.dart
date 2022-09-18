import 'dart:math';

void main() {
  /// Comments

  // This is a comment. It is never executed.

  /* This is also a multiple line comment. 
  Can be used to...
  comment multiple line. */

  /// This is a documentation comment
  ///
  /**Documentation comment can be applied to multiple line.
   * Like this... 
   End of documentation comment. */

  //Printing output
  //Print is use to output whatever you want in debug console
  print('Hello, Dart!');

  /// Printing out
  print('Hello, From DDU Students.');

  ///Statements and expressions.
  /**A statement is a command, something you tell the computer
  to do.Statement end with semi-colon.*/
  /**An expression is a value, or is something
  that can be calculated as a value. */

  /// Arithmetic operations

  /// Simple operations
  print(2 + 6);
  print(10 - 2);
  print(2 * 4);
  print(24 / 3);

  /// Decimal numbers
  print(22 / 7); //Output will be:3.14285
  print(22 ~/ 7);
  /* ~/ it perform interger operation
    Output will be:3*/

  /// The Euclidean modulo operation
  print(28 % 10);
  //It gives reminder as the answer.

  /// Order of operations.
  /* It gives the idea of which operation will be executed first
    Parentheses has highest prefernce.
    Than Division and Multiplication and after that Addition and Subtraction. */
  print(((8000 / (5 * 10)) - 32) ~/ (29 % 5));
  print(350 / 5 + 2); //72
  print(350 / (5 + 2)); //50

  /// Math functions
  //To use Math function use import"dart:math"; library
  print(sin(45 * pi / 180)); //0.7071067811865475
  print(cos(135 * pi / 180)); //// -0.7071067811865475
  print(sqrt(2)); //1.4142135623730951
  print(max(5, 10)); //10
  print(min(-5, -10)); //-10
  print(max(sqrt(2), pi / 2)); //1.5707963267948966

  /// Naming data
  /*
    Identifiers can include both, characters and digits. However,
    the identifier cannot begin with a digit.
    Identifiers cannot include special symbols except for
    underscore (_) or a dollar sign ($).
    Identifiers cannot be keywords.
    They must be unique.
    Identifiers are case-sensitive.
    Identifiers cannot contain spaces.
   */

  /// Variables
  int number = 10;
  number = 15;
  double apple = 3.14159;
  print(10.isEven);
  print(3.14159.round());

  /// Type safety
  int myInteger = 10;
  // myInteger = 3.14159; // Not allowed.

  num myNumber;
  myNumber = 10; // OK
  myNumber = 3.14159; // OK
  // myNumber = 'ten'; // Not allowed.

  dynamic myVariable;
  myVariable = 10; // OK
  myVariable = 3.14159; // OK
  myVariable = 'ten'; // OK

  /// Type inference
  var someNumber = 10;
  someNumber = 15; // OK
  // someNumber = 3.14159; // No, no, no.

  /// Constants
  // const myConstant = 10;
  // myConstant = 0; // Not allowed.

  final hoursSinceMidnight = DateTime.now().hour;
  //It tells you the current date and time when the code is run.
  // hoursSinceMidnight = 0; // Not allowed.

  /// Increment and decrement
  var counter = 0;
  counter += 1;
  counter -= 1;
  counter = counter + 1;
  counter = counter - 1;
  counter++;
  counter--;

  double myValue = 10;
  myValue *= 3;
  myValue /= 2;
  myValue = myValue * 3;
  myValue = myValue / 2;

  ///Mini-exercise:-

  /*Q:-Now print the value of 1 overthe square root of 2 in Dart.
    Confirm that it equals the sine of 45°.*/
  print(sin(45 * pi / 180));
  print(1 / sqrt(2));

  /*Q:-Declare a constant of type int called myAge and set it to
    your age.*/
  const myAge = 21;
  print(myAge);

  /*Q:-Declare a variable of type double called averageAge.
    Initially, set the variable to your own age. Then, set it to
    the average of your age and your best friend’s age.*/
  double averageAge = 21;
  averageAge = (21 + 27) / 2;
  print(averageAge);

  /*Q-Create a constant called testNumber and initialize it
    with whatever integer you’d like. Next, create another
    constant called evenOdd and set it equal to testNumber
    modulo 2. Now change testNumber to various numbers.
    What do you notice about evenOdd? */
  const testNumber = 42;
  const evenOdd = testNumber % 2;
  print(evenOdd);

  ///Challenges

  /*Challenge-1:Declare a constant int called myAge and set it equal to your
    age. Also declare an int variable called dogs and set that
    equal to the number of dogs you own. Then imagine you
    bought a new puppy and increment the dogs variable by one. */
  const Age = 21;
  var dogs = 10;
  dogs++;
  print(Age);
  print(dogs);

  /* Challenge 2: Make it compile
  
   Given the following code:
   age = 16;
   print(age);
   age = 30;
   print(age);
   Modify the first line so that it compiles. Did you use `var`, `int`,
   `final` or `const`?*/
  var age = 16;
  print(age);
  age = 30;
  print(age);

  /*Challenge 3: Compute the answer
    Consider the following code:
      const x = 46;
      const y = 10;
    Work out what each answer equals when you add the
    following lines of code to the code above:
      const answer1 = (x * 100) + y;
      const answer2 = (x * 100) + (y * 100);
      const answer3 = (x * 100) + (y / 10);*/
  const x = 46;
  const y = 10;
  const answer1 = (x * 100) + y;
  print(answer1); //4610
  const answer2 = (x * 100) + (y * 100);
  print(answer2); // 5600
  const answer3 = (x * 100) + (y / 10);
  print(answer3); // 4601.0

  /* Challenge 4: Average rating
   Declare three constants called `rating1`, `rating2` and `rating3` of
   type `double` and assign each a value. Calculate the average of the
   three and store the result in a constant named `averageRating`.*/
  const rating1 = 5.9;
  const rating2 = 7.3;
  const rating3 = 8.4;
  const averageRating = (rating1 + rating2 + rating3) / 3;
  print(averageRating);

  /* Challenge 5: Quadratic equations
   A quadratic equation is something of the form
   `a⋅x² + b⋅x + c = 0`.
   The values of `x` which satisfy this can be solved by using the equation
   `x = (-b ± sqrt(b² - 4⋅a⋅c)) / (2⋅a)`.
   Declare three constants named `a`, `b` and `c` of type `double`. Then
   calculate the two values for `x` using the equation above (noting that
   the `±` means plus or minus, so one value of `x` for each). Store the
   results in constants called `root1` and `root2` of type `double`.*/
  const a = 5.0;
  const b = 10.0;
  const c = 3.0;
  final root1 = (-b + sqrt(b * b - 4 * a * c)) / (2 * a);
  final root2 = (-b - sqrt(b * b - 4 * a * c)) / (2 * a);
  print(root1);
  print(root2);
}
