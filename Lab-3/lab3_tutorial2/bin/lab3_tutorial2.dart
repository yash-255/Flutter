///Functions:
import 'dart:math';

/**If we want to repeat a set of code repeatedly we cannot write that code
 * again and again so we then use function.  */
/**Function take something or nothing as input and if there is a return type
 * in it then it will return something otherwise it will not return anything.
 * In Dart, a function consists of a return type, a name, a
 * parameterlist in parentheses and a body enclosed in braces.
 * Give function the name that best suite it functionality.
 * Write your function so it has only oen jod to do.*/
//Main is also a function.
void main() {
  const input = 5328;
  final output = compliment(input);
  print(output);

  helloPersonAndPet('Yash', 'Snow');
  // helloPersonAndPet();

  print(fullName('Yash', 'Gandhi'));
  print(fullName('Darshan', 'Pandya', 'Expert'));

  print(dvwithinTolerance(5));
  print(dvwithinTolerance(15));
  print(dvwithinTolerance(10, 8, 211));
  print(dvwithinTolerance(8, 7));

  print(npwithinTolerance(9, min: 7, max: 110));
  print(npwithinTolerance(9, max: 110, min: 700));
  print(npwithinTolerance(50));
  print(npwithinTolerance(10));
  print(npwithinTolerance(50, min: 70));
  print(npwithinTolerance(18, max: 200));

  print(mnprwithinTolerance(value: 90));

  avoidingSideEffects();

  optionalTypes();

  AnonymousFunctions();

  assigningFunctionsToVariables();

  returningAFunction();
  anonymousFunctionsInForEachLoops();
  closuresAndScope();

  arrowFunctionRefactoringExample1();
  arrowFunctionRefactoringExample2();
  arrowFunctionRefactoringExample3();

  ///Mini-Exercise:-

  print(youAreWonderful('Bob'));

  print(youAreWonderful2('Bob', 10));

  print(youAreWonderful3(name: 'Mary'));

  print(wonderful4('Bob'));

  arrowFunctionsMiniExercise1();

  anonymousFunctionsMiniExercise2();

  ///Challenges:-

  challenge1();

  challenge2();

  challenge3();
}

String compliment(int number) {
  //We call a function by writing its name, and providing arguments.
  return '$number is my lucky number.';
}

///In a Dart function, you can use any number of parameters. If
///you have more than one parameter for your function, simply
///separate them with commas.below is function with two parmeters.
void helloPersonAndPet(String person, String pet) {
  print('Hello, $person, and your furry friend, $pet!');
}
//Positional parameter are those in which you have to give the argument.

//You can make parameter optional.
String fullName(String first, String last, [String? title]) {
  //  Writing [String? title] makes title optional.
  //  If you don't pass anything then it will be none.
  if (title != null) {
    return '$title $first $last';
  } else {
    return '$first $last';
  }
}

//You can also assign default value to function using assignment operator.
/*In below function two argument are optional so if you don't specify it
  will be 0 and 10. */
bool dvwithinTolerance(int value, [int min = 0, int max = 10]) {
  return min <= value && value <= max;
}

//Named parameters are used to make clear of the parameter in the
//function call.To create a named parameter, you surround it with curly
//braces instead of square brackets.
bool npwithinTolerance(int value, {int min = 0, int max = 10}) {
  return min <= value && value <= max;
}

//You can make the value of named parameter compulsory
bool mnprwithinTolerance({
  required int value,
  int min = 0,
  int max = 100,
}) {
  return min <= value && value <= max;
}
// print(withinTolerance());

void avoidingSideEffects() {
  //Anything that effect the code outside the function is called side-effect.
  // void hello() {
  //   print('Hello!');//Printing on console is side-effect.
  // }
  // hello();

  String hello() {
    return 'Hello!'; //It's not an side effect.
  }

  print(hello());

  var myPreciousData = 5782;

  String anInnocentLookingFunction(String name) {
    myPreciousData = -1;
    return 'Hello, $name. Heh, heh, heh.';
  }
}

void optionalTypes() {
  // String compliment(int number) {
  //   return '$number is a very nice number.';
  // }
  //It is possible to omit the type from function declaration.
  compliment(number) {
    return '$number is a very nice number.';
  }

  // String compliment(dynamic number) {
  //   return '$number is a very nice number.';
  // }
}

void AnonymousFunctions() {
  //If you remove the return type and the function name,
  //then what you have left is an anonymous function.
  final multiply = (int a, int b) {
    return a * b;
  };
  print(multiply(2, 3));
}

void assigningFunctionsToVariables() {
  //When assigning a value to a variable, functions behave just
  //like other types.
  int number = 4;
  String greeting = 'hello';
  bool isHungry = true;
  Function multiply = (int a, int b) {
    return a * b;
  };

  // Function myFunction = int multiply(int a, int b) {
  //   return a * b;
  // };
}

void returningAFunction() {
  //Just as you can write a function to take int or String as a
  //parameter, you can also have Function as a parameter.
  Function applyMultiplier(num multiplier) {
    return (num value) {
      return value * multiplier;
    };
  }

  final triple = applyMultiplier(3);
  print(triple(6));
  print(triple(14.0));
}

void anonymousFunctionsInForEachLoops() {
  //You can call forEach on the list and pass in an anonymous function.
  const numbers = [1, 2, 3];
  numbers.forEach((number) {
    final tripled = number * 3;
    print(tripled);
  });

  // You can also define the function separately and pass it in
  // directly to `forEach()`.
  final triple = (int number) {
    final tripled = number * 3;
    print(tripled);
  };
  numbers.forEach(triple);
}

//Anonymous functions in act as what are known as closure
void closuresAndScope() {
  var counter = 0;
  final incrementCounter = () {
    counter += 1;
  };

  incrementCounter();
  incrementCounter();
  incrementCounter();
  incrementCounter();
  incrementCounter();
  print(counter); //5

  Function countingFunction() {
    var counter = 0;
    final incrementCounter = () {
      counter += 1;
      return counter;
    };
    return incrementCounter;
  }

  final counter1 = countingFunction();
  final counter2 = countingFunction();

  print(counter1());
  print(counter2());
  print(counter1());
  print(counter1());
  print(counter2());
}

void arrowFunctionRefactoringExample1() {
  // final multiply = (int a, int b) {
  //   return a * b;
  // };

  final multiply = (int a, int b) => a * b;

  print(multiply(2, 3));
}

void arrowFunctionRefactoringExample2() {
  // Function applyMultiplier(num multiplier) {
  //   return (num value) {
  //     return value * multiplier;
  //   };
  // }

  //Arrow function is used when the function is of only one line.
  Function applyMultiplier(num multiplier) {
    return (num value) => value * multiplier;
  }

  final triple = applyMultiplier(3);
  print(triple(6));
  print(triple(14.0));
}

void arrowFunctionRefactoringExample3() {
  const numbers = [1, 2, 3];

  numbers.forEach((number) {
    final tripled = number * 3;
    print(tripled);
  });

  numbers.forEach((number) => print(number * 3));
}

///Mini-exercise:-

/// Mini-exercise 1
///
/// Write a function named youAreWonderful with a String parameter
/// called name. It returns a string using `name`, something like
/// "You're wonderful, Bob."

String youAreWonderful(String name) {
  return "You're wonderful, $name.";
}

/// Mini-exercise 2
///
/// Add another int` parameter called numberPeople so that the
/// function returns something like "You're wonderful, Bob. 10 people
/// think so."
String youAreWonderful2(String name, int numberPeople) {
  return "You're wonderful, $name. $numberPeople people think so.";
}

///Mini-exercise 3
///
///  Make both inputs named parameters. Make `name` required and
/// `numberPeople` have a default of `30`.

String youAreWonderful3({
  required String name,
  int numberPeople = 30,
}) {
  return "You're wonderful, $name. $numberPeople people think so.";
}

/// Mini-exercise 1
///
/// Change the youAreWonderful() function in the first mini-exercise
/// of this chapter into an anonymous function. Assign it to a variable
/// called `wonderful`.

final wonderful4 = (String name) {
  return "You're wonderful, $name.";
};

///Mini-exercise 2
///
/// Using `forEach()`, print a message telling the people in the following
/// list that they're wonderful.
///
/// const people = ['Chris', 'Tiffani', 'Pablo'];

void anonymousFunctionsMiniExercise2() {
  const people = ['Ravi', 'Raj', 'Yash'];
  people.forEach((person) {
    print("You're wonderful, $person.");
  });
}

///Mini-exercise 1
///
/// Change the `forEach()` loop in the previous "You're wonderful"
/// mini-exercise to use arrow syntax.
void arrowFunctionsMiniExercise1() {
  const people = ['Jay', 'Soham', 'Darshan'];
  people.forEach((person) => print("You're wonderful, $person."));
}

///Challenges:-

///Challenge 1:
///Write a function that checks if a number is prime.

void challenge1() {
  bool isNumberDivisible(int number, int divisor) {
    return number % divisor == 0;
  }

  bool isPrime(int number) {
    var isPrime = true;
    for (var i = 2; i <= sqrt(number); i++) {
      if (isNumberDivisible(number, i)) {
        isPrime = false;
      }
    }
    return isPrime;
  }

  print(isPrime(6));
  print(isPrime(13));
  print(isPrime(8893));
}

///Challenge 2:
///Write a function named repeatTask with the following definition:
///  int repeatTask(int times, int input, Function task)
///It repeats a given task on inputfor times number of times.Pass an
///anonymous function to repeatTask to square the input of 2 four
/// times. Confirm that you get the result 65536,since 2 squared is 4,
///4 squared is 16, 16 squared is 256, and 256 squared is 65536.

void challenge2() {
  int repeatTask(int times, int input, Function task) {
    int result = task(input);
    for (var i = 1; i < times; i++) {
      result = task(result);
    }
    return result;
  }

  final result = repeatTask(9, 10, (num input) {
    return input * input;
  });

  print(result);
}

///Challenge 3:
///Update Challenge 2 to use arrow syntax.

void challenge3() {
  int repeatTask(int times, int input, Function task) {
    int result = task(input);
    for (var i = 1; i < times; i++) {
      result = task(result);
    }
    return result;
  }

  final result = repeatTask(8, 9, (num input) => input * input);

  print(result);
}
