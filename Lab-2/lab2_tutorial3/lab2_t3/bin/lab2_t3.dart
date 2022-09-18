///  Types and Operation
import 'dart:math';

//import 'package:characters/characters.dart';

void main() {
  //A is a way to tell the compiler how you plan to
  //use some data.
  /// Type inference
  // int myInteger = 10;
  // double myDouble = 3.14;
  // const int myInteger = 10;
  // const double myDouble = 3.14;
  // final int myInteger = 10;
  // final double myDouble = 3.14;
  const myInteger = 10;
  const myDouble = 3.14;

  num myNumber = 3.14;
  //"is" keyword is use to check the datatype of the variable.
  print(myNumber is double);
  print(myNumber is int);
  print(myNumber.runtimeType); //Output:Double.

  /// Type conversion
  //  Type Conversion is used to convert the one datatype to another.
  /* Two type of type conversion.
      1.Implicit Conversion.
      2.Explicit Conversion.
  */
  //You cannot assign double type to int type.
  var integer = 100;
  var decimal = 12.5;
  integer = decimal.toInt();
  print(integer);
  //integer = decimal; //Not allowed.

  ///Operators with mixed types
  const hourlyRate = 19.5;
  const hoursWorked = 10;
  //const totalCost = hourlyRate * hoursWorked;//Output:195.
  // const totalCost = (hourlyRate * hoursWorked).toInt();
  // Above line show error:"Const variables must be initialized with a constant value."
  final totalCost = (hourlyRate * hoursWorked).toInt();
  print(totalCost);

  ///Ensuring a certain type.
  // const wantADouble = 3;//Dart will take datatype as 'int'.
  // final actuallyDouble = 3.toDouble();
  //Use 'toDouble' to convert the 'int' to 'double'.
  //But that is type conversion.
  const double actuallyDouble = 3; //Another way.
  const wantADouble = 3.0; //Best Way.

  ///Casting down
  num someNumber = 3;
  //print(someNumber.isEven);//Error:The getter 'isEven' isn't defined for the type 'num'.
  //Use 'as' keyword to change the type.
  final someInt = someNumber as int;
  print(someInt.isEven);
  //final someDouble = someNumber as double;
  //Error in abve line:type 'int' is not a subtype of type 'double' in type cast
  //You cannot cast to sibling type.
  final someDouble = someNumber.toDouble();

  /// Strings and characters
  // You can directly access the String through 'string' datatype.
  print('Hello, Dart!'); //Printing:"Hello, Dart!"
  var greeting = 'Hello, Dart!'; //Its is of String type.
  greeting = 'Hello, Flutter!';
  //You can reassign the value of greeting as long as it is of type string.
  /*It completely discarded the string 'Hello, Dart!'and replaced it with 
  a whole new string whose value was 'Hello, Flutter!'.*/
  print(greeting);

  /// Getting characters
  const letter = 'a';
  //Dart does not have char datatype.
  //So the above statement is still a String.

  /// Single-quotes vs double-quotes
  //You can use both quotes.Both are fine.
  print('I like cats');
  print("I like cats");
  print("my cat's food");
  print('my cat\'s food');
  /*In Single quotes you will need to use the backslash \ as and escape 
    character so that Dart knows that the string isn’t ending early:*/

  /// Concatenation
  //Simple way to do Concatenation.
  var messag = 'Hello' + ' my name is ';
  const nam = 'Ray';
  messag += nam;
  print(messag);
  /*'StringBuffer' creates a mutable location in memory where you can
    add to the string without having to create a new string for
    every change.*/
  final message = StringBuffer();
  message.write('Hello');
  message.write(' my name is ');
  message.write('Ray');
  message.toString();
  print(message);

  /// Interpolation
  // INterpolation is a special dart syntax that is easy to read for others.
  const name = 'Ray';
  const introduction = 'Hello my name is $name';
  print(introduction);

  const oneThird = 1 / 3;
  // const sentence = 'One third is $oneThird.';
  //Output for above statement:One third is 0.3333333333333 goes to infinite.
  final sentence = 'One third is ${oneThird.toStringAsFixed(3)}.';
  //'toStringAsFixed(3)' fixed till 3 digit after 0.
  print(sentence);

  /// Multi-line strings
  /*Three single-quotes (''') signify that this is a multi-line
    string. Three double-quotes (""") would have done the same thing.*/
  const bigString = '''
You can have a string 
that contains multiple 
lines
by
doing this.''';
  print(bigString);

  // const oneLine = 'This is only '
  //   'a single '
  //   'line '
  //   'at runtime.';
  const oneLine = 'This is only ' + 'a single ' + 'line ' + 'at runtime.';
  print(oneLine);

  const twoLines = 'This is\ntwo lines.';
  print(twoLines);

  const rawString = r'My name \n is $name.';
  print(rawString);

  /// Inserting characters from their codes
  print('I \u2764 Dart\u0021');
  print('I love \u{1F3AF}');

  /// Object and dynamic types
  // var myVariable = 42;
  // myVariable = 'hello'; // compile-time error

  // dynamic myVariable = 42;
  // myVariable = 'hello'; // OK

  // var myVariable;       // defaults to dynamic
  // myVariable = 42;      // OK
  // myVariable = 'hello'; // OK

  Object myVariable = 42;
  myVariable = 'hello'; // OK

  ///Mini-Exercise:-
  ///Mini-exercise 1
  ///
  /// Create a constant called `age1` and set it equal to `42`. Create another
  /// constant called `age2` and set it equal to `21`. Check by hovering over
  /// the variable names that the type for both has been inferred correctly as
  /// `int`.
  const age1 = 42;
  const age2 = 21;

  ///Mini-exercise 2
  ///
  /// Create a constant called `averageAge` and set it equal to the average of
  /// `age1` and `age2` using the operation `(age1 + age2) / 2`. Hover over
  /// `averageAge` to check the type. Then check the result of `averageAge`. Why
  /// is it a `double` if the components are all `int`?
  const averageAge = (age1 + age2) / 2;
  print(averageAge);

  ///Mini-exercise 1
  ///
  /// Create a string constant called `firstName` and initialize it to your
  /// first name. Also create a string constant called `lastName` and
  /// initialize it to your last name.
  const firstName = 'Ray';
  const lastName = 'Wenderlich';

  ///Mini-exercise 2
  ///
  /// Create a string constant called `fullName` by adding the `firstName` and
  /// `lastName` constants together, separated by a space.
  const fullName = firstName + ' ' + lastName;
  print(fullName);

  ///Mini-exercise 3
  ///
  /// Using interpolation, create a string constant called `myDetails` that
  /// uses the `fullName` constant to create a string introducing yourself.
  /// For example, Ray Wenderlich's string would read: "Hello, my name is Ray
  /// Wenderlich."
  const myDetails = 'Hello, my name is $fullName.';
  print(myDetails);

  ///Challenges:-
  /// Challenge 1: Teacher's grading
  ///
  /// You're a teacher and in your class attendance is worth 20% of the grade,
  /// the homework is worth 30% and the exam is worth 50%. Your student got 90
  /// points for her attendance, 80 points for her homework and 94 points on
  /// her exam. Calculate her grade as an integer percentage rounded down.
  const attendance = 80;
  const homework = 85;
  const exam = 81;
  const rawGrade = (0.2 * attendance) + (0.3 * homework) + (0.5 * exam);
  final integerGrade = rawGrade.toInt();
  print(integerGrade);

  /// Challenge 2: Find the error
  ///
  /// What is wrong with the following code?
  ///
  /// const name = 'Ray';
  /// name += ' Wenderlich';
  ///
  var name1 = 'Ray';
  name1 += ' Wenderlich';
  print(name);

  /// Challenge 3: What type?
  ///
  /// What is the type of `value`?
  ///
  /// const value = 10 / 2;
  ///
  const value = 10 / 2;
  print(value); // 5.0
  // `value` is a `double`.

  /// Challenge 6: In summary
  ///
  /// What is the value of the constant named `summary`?
  ///
  /// const number = 10;
  /// const multiplier = 5;
  /// final summary = '$number \u00D7 $multiplier = ${number * multiplier}';
  ///
  const number = 10;
  const multiplier = 5;
  final summary = '$number \u00D7 $multiplier = ${number * multiplier}';
  print(summary);
  // 10 × 5 = 50
}
