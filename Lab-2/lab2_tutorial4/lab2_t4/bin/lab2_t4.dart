///Control Flow.
import 'dart:math';

const global = 'Hello,from global variable';

void main() {
  /// Comparison Operators
  // const bool yes = true;
  // const bool no = false;
  const yes = true;
  const no = false;
  //True and false in the above statement act as keyword to set as boolean constant.

  /// Boolean Operators
  //Boolean is commonly used to compare values.
  const doesOneEqualTwo = (1 == 2); //Equality test.
  print('doesOneEqualTwo: $doesOneEqualTwo');
  // const doesOneEqualTwo = 1 == 2;//You should use parantheses.
  print(2 == 2.0);

  const doesOneNotEqualTwo = (1 != 2); //Inequality test.
  print('doesOneNotEqualTwo: $doesOneNotEqualTwo');

  const alsoTrue = !(1 == 2);
  print('alsoTrue: $alsoTrue');

  const isOneGreaterThanTwo = (1 > 2); //Greater than test.
  const isOneLessThanTwo = (1 < 2); //Less than test.
  print('isOneGreaterThanTwo: $isOneGreaterThanTwo');
  print('isOneLessThanTwo: $isOneLessThanTwo');

  print(1 <= 2); //Less than or equal to test.
  print(2 <= 2); //Less than or equal to test.
  print(2 >= 1); //Greater than or equal to test.
  print(2 >= 2); //Greater than or equal to test.

  /// Boolean Logic
  const isSunny = true;
  const isFinished = true;
  const willGoCycling = isSunny && isFinished;
  //If both condition are true than it will return true.
  print('willGoCycling: $willGoCycling');

  const willTravelToAustralia = true;
  const canFindPhoto = false;
  //If any one condition is true than it will return true.
  const canDrawPlatypus = willTravelToAustralia || canFindPhoto;
  print('canDrawPlatypus: $canDrawPlatypus');

  const andTrue = (1 < 2 && 4 > 3);
  const andFalse = (1 < 2 && 3 > 4);
  const orTrue = (1 < 2 || 3 > 4);
  const orFalse = (1 == 2 || 3 == 4);
  print('andTrue: $andTrue');
  print('andFalse: $andFalse');
  print('orTrue: $orTrue');
  print('orFalse: $orFalse');
  //Combining '&&' and '||'.
  const andOr = 3 > 4 && 1 < 2 || 1 < 4;
  print('andOr: $andOr');
  //Different possibilites.
  const orFirst = 3 > 4 && (1 < 2 || 1 < 4);
  const andFirst = (3 > 4 && 1 < 2) || 1 < 4;
  print('orFirst: $orFirst');
  print('andFirst: $andFirst');

  /// String Equality
  // You can compare string using equality operator.
  const guess = 'dog';
  const guessEqualsCat = guess == 'cat';
  print('guessEqualsCat: $guessEqualsCat');

  /// The If Statement
  // Most common way to control the flow is if statement.
  if (5 > 1) //Simple if statement.
  {
    print('Yes, 5 is greater than 1.');
  }

  const animal = 'Fox';
  //If the 'if' statement is false than you can add an else statement.
  //Together it is called if-else statement.
  if (animal == 'Cat' || animal == 'Dog') {
    print('Animal is a house pet.');
  } else {
    print('Animal is not a house pet.');
  }
  //You can also do nested if-else statement.
  const trafficLight = 'yellow';
  var command = '';
  if (trafficLight == 'red') {
    command = 'Stop';
  } else if (trafficLight == 'yellow') {
    command = 'Slow down';
  } else if (trafficLight == 'green') {
    command = 'Go';
  } else {
    command = 'INVALID COLOR!';
  }
  print(command);

  /// Variable Scope
  //Curly braces are use as boundry to determine the scope of the variable.
  const local = 'Hello, main';

  if (2 > 1) {
    const insideIf = 'Hello, anybody?';

    print(global);
    print(local);
    print(insideIf);
  }

  print(global);
  print(local);
  // print(insideIf); // Outside the scope!

  /// The Ternary Conditional Operator
  // It is another form of if-else statement.
  const score = 83;
  String message;
  if (score >= 60) {
    message = 'You passed from if-else statement';
  } else {
    message = 'You failed from if-else statement';
  }
  print('message: $message');

  message =
      (score >= 60) ? 'You passed from Ternary' : 'You failed from Ternary';
  print('message: $message');
  //Can be used to eliminate long if-else statement.

  /// Switch Statements
  // It is another way to control flow mainly for multiple condition.
  const n = 3;
  switch (n) //Based on value it will fo into the case which satisfies it.
      {
    //You can add case as many as there are condition.
    case 0:
      print('zero');
      break; //It tell Dart to exit the code.
    case 1:
      print('one');
      break;
    case 2:
      print('two');
      break;
    case 3:
      print('three');
      break;
    case 4:
      print('four');
      break;
    default: //Default is used when no cases are satisfied.
      print('something else');
  }
  //Another example of switch-case.
  const weather = 'cloudy';
  switch (weather) {
    case 'sunny':
      print('Put on sunscreen.');
      break;
    case 'snowy':
      print('Get your skis.');
      break;
    case 'cloudy':
    case 'rainy':
      print('Bring an umbrella.');
      break;
    default:
      print("I'm not familiar with that weather.");
  }

  /// Enumerated Types
  // Find the enum defined below, outside of the main() function.
  //You can use enum to define your own datatype with a finite number of options.
  /*Naming enums:-
      1.First letter should be capital.
      2.Enum values should be in lower case unless you have special reason.
  */
  const weatherToday = Weather.snowy;
  switch (weatherToday) {
    case Weather.sunny:
      print('Put on sunscreen.');
      break;
    case Weather.snowy:
      print('Get your skis.');
      break;
    case Weather.cloudy:
    case Weather.rainy:
      print('Bring an umbrella.');
      break;
  }

  print(weatherToday); //It will give you the value.
  final index = weatherToday.index;
  print(index); //Printing the index of enum,that is 1.

  ///Mini-exercise:-

  ///Mini-exercise 1
  ///
  /// Create a constant called `myAge` and set it to your age. Then, create a
  /// constant named `isTeenager` that uses Boolean logic to determine if the
  /// age denotes someone in the age range of 13 to 19.
  const myAge = 42;
  const isTeenager = myAge >= 13 && myAge <= 19;
  print('isTeenager: $isTeenager');

  ///Mini-exercise 2
  ///
  /// Create another constant named `maryAge` and set it to `30`. Then, create
  /// a constant named `bothTeenagers` that uses Boolean logic to determine if
  /// both you and Mary are teenagers.
  const maryAge = 30;
  const bothTeenagers = (maryAge >= 13 && maryAge <= 19) && isTeenager;
  print('bothTeenagers: $bothTeenagers');

  ///Mini-exercise 3
  ///
  /// Create a `String` constant named `reader` and set it to your name. Create
  /// another `String` constant named `ray` and set it to `'Ray Wenderlich'`.
  /// Create a Boolean constant named `rayIsReader` that uses string equality
  /// to determine if `reader` and `ray` are equal.
  const reader = 'Karan Raval';
  const ray = 'Ray Wenderlich';
  const rayIsReader = reader == ray;
  print('rayIsReader: $rayIsReader');

  ///Mini-exercise 1
  ///
  /// Create a constant named `myAge` and initialize it with your age. Write
  /// an `if` statement to print out "Teenager" if your age is between `13`
  /// and `19`, and "Not a teenager" if your age is not between `13` and `19`.
  // const myAge = 42; // same as above
  // const isTeenager = myAge >= 13 && myAge <= 19; // same as above
  if (isTeenager) {
    print('Teenager');
  } else {
    print('Not a teenager');
  }

  ///Mini-exercise 2
  ///
  /// Use a ternary conditional operator to replace the `else-if` statement
  /// that you used above. Set the result to a variable named `answer`.
  const answer = (isTeenager) ? 'Teenager' : 'Not a teenager';
  print(answer);

  ///Mini-exercise 2
  ///
  /// Create a constant called `audioState` and give it an `AudioState` value.
  /// Write a `switch` statement that prints a message based on the value.
  const audioState = AudioState.paused;
  switch (audioState) {
    case AudioState.playing:
      print('Audio playing');
      break;
    case AudioState.paused:
      print('Audio paused');
      break;
    case AudioState.stopped:
      print('Audio stopped');
      break;
  }
}

enum Weather {
  sunny,
  snowy,
  cloudy,
  rainy,
}

///Mini-exercise 1
///
/// Make an `enum` called `AudioState` and give it values to represent
/// `playing`, `paused` and `stopped` states.
enum AudioState {
  playing,
  paused,
  stopped,
}
