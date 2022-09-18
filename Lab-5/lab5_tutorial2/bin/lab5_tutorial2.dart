void main() {
  extendingClasses();
  abstractClasses();
  interfaces();
  mixins();
  extensions();

  ///Mini-Exercise:
  aMiniExercise1();
  aMiniExercise2();
  aMiniExercise3();

  bMiniExercises();

  cMiniExercise();

  ///Challenge:
  challenge1();
  challenge2();
  challenge3();
}

/// Extending classes
void extendingClasses() {
  //By extending classes you can create your own hierarchies.
  //It is also called inheritance.
  //The parent and child classes are also called super classes and subclasses
  //respectively.
  final john = Person('John', 'Snow');
  final jane = Student('Jane', 'Snow');
  print(john.fullName);
  print(jane.fullName);

  final historyGrade = Grade.B;
  jane.grades.add(historyGrade); //Adding Grades.

  final jessie = SchoolBandMember('Jessie', 'Jones');
  final marty = StudentAthlete('Marty', 'McFly');

  final students = [jane, jessie, marty];

  print(jessie is Object);
  print(jessie is Person);
  print(jessie is Student);
  print(jessie is SchoolBandMember);
  print(jessie is! StudentAthlete);
}

enum Grade { A, B, C, D, F } //Creating first subclass.

class Person {
  Person(this.givenName, this.surname);
  String givenName;
  String surname;
  String get fullName => '$givenName $surname';
  String toString() => fullName;
}

//Student is child of
class Student extends Person {
  Student(String givenName, String surname) : super(givenName, surname);
  var grades = <Grade>[];
  @override
  String get fullName => '$surname, $givenName';
}

class SchoolBandMember extends Student {
  SchoolBandMember(String givenName, String surname)
      : super(givenName, surname);
  static const minimumPracticeTime = 2;
}

class StudentAthlete extends Student {
  StudentAthlete(String givenName, String surname) : super(givenName, surname);
  bool get isEligible => grades.every((grade) => grade != Grade.F);
}

/// Abstract classes
void abstractClasses() {
  // final animal = Animal();
  final platypus = Platypus();
  print(platypus.isAlive);
  platypus.eat();
  platypus.move();
  platypus.layEggs();
  print(platypus);
}

abstract class Animal {
  bool isAlive = true;
  void eat();
  void move();

  @override
  String toString() {
    return "I'm a $runtimeType";
  }
}

// class Platypus extends Animal {
//   @override
//   void eat() {
//     print('Munch munch');
//   }

//   @override
//   void move() {
//     print('Glide glide');
//   }

//   void layEggs() {
//     print('Plop plop');
//   }
// }

/// Interfaces
void interfaces() {
  // final repository = DataRepository();
  // final DataRepository repository = FakeWebServer();
  // final temperature = repository.fetchTemperature('Berlin');

  final repository = DataRepository();
  final temperature = repository.fetchTemperature('Manila');
  print(temperature);

  final someClass = SomeClass();
  print(someClass.myField);
  someClass.myMethod();
}

abstract class DataRepository {
  factory DataRepository() => FakeWebServer();
  double fetchTemperature(String city);
}

class FakeWebServer implements DataRepository {
  @override
  double fetchTemperature(String city) {
    return 42.0;
  }
}

class AnotherClass {
  int myField = 42;
  void myMethod() => print(myField);
}

// class SomeClass extends AnotherClass {}
class SomeClass implements AnotherClass {
  @override
  int myField = 0;

  @override
  void myMethod() => print('Hello');
}

/// Mixins
void mixins() {
  final platypus = Platypus();
  final robin = Robin();
  platypus.layEggs();
  robin.layEggs();
}

abstract class Bird {
  void fly();
  void layEggs();
}

class Robin extends Bird with EggLayer, Flyer {}

class Platypus extends Animal with EggLayer {
  @override
  void eat() {
    print('Munch munch');
  }

  @override
  void move() {
    print('Glide glide');
  }
}

mixin EggLayer {
  void layEggs() {
    print('Plop plop');
  }
}

mixin Flyer {
  void fly() {
    print('Swoosh swoosh');
  }
}

/// Extensions
void extensions() {
  // final original = 'abc';
  // final secret = encode(original);
  // print(secret);

  // final secret = 'abc'.encoded;
  // print(secret);

  final original = 'I like extensions!';
  final secret = original.encoded;
  final revealed = secret.decoded;
  print(secret);
  print(revealed);

  print(5.cubed);

  final language = ProgrammingLanguage.dart;
  print(language.isStronglyTyped);
}

String encode(String input) {
  final output = StringBuffer();
  for (int codePoint in input.runes) {
    output.writeCharCode(codePoint + 1);
  }
  return output.toString();
}

extension on String {
  String get encoded {
    return _code(1);
  }

  String get decoded {
    return _code(-1);
  }

  String _code(int step) {
    final output = StringBuffer();
    for (int codePoint in runes) {
      output.writeCharCode(codePoint + step);
    }
    return output.toString();
  }
}

extension on int {
  int get cubed {
    return this * this * this;
  }
}

enum ProgrammingLanguage { dart, swift, javaScript }

extension on ProgrammingLanguage {
  bool get isStronglyTyped {
    switch (this) {
      case ProgrammingLanguage.dart:
      case ProgrammingLanguage.swift:
        return true;
      case ProgrammingLanguage.javaScript:
        return false;
      default:
        throw Exception('Unknown Programming Language $this');
    }
  }
}

///Mini-Exercise:

void aMiniExercise1() {
  /// Extending classes: Mini-exercise 1
  ///
  /// Create a class named `Fruit` with a `String` field named `color` and a
  /// method named `describeColor` which uses `color` to print a message.
  final fruit = Fruit('yellow');
  fruit.describeColor();
}

class Fruit {
  Fruit(this.color);
  final color;
  void describeColor() {
    print("This fruit's color is $color.");
  }
}

void aMiniExercise2() {
  /// Extending classes: Mini-exercise 2
  ///
  /// Create a subclass of `Fruit` named `Melon` and then create two `Melon`
  /// subclasses named `Watermelon` and `Cantaloupe`.
  final melon = Melon('blue');
  final watermelon = Watermelon('red and green');
  final cantaloupe = Cantaloupe('orange');
  melon.describeColor();
  watermelon.describeColor();
  cantaloupe.describeColor();
}

class Melon extends Fruit {
  Melon(String color) : super(color);
}

// class Watermelon extends Melon {
//   Watermelon(String color) : super(color);
// }
class Cantaloupe extends Melon {
  Cantaloupe(String color) : super(color);
}

void aMiniExercise3() {
  /// Extending classes: Mini-exercise 3
  ///
  /// Override `describeColor` in the `Watermelon` class to vary the output.
  final fruit = Fruit('yellow');
  final watermelon = Watermelon('red and green');
  fruit.describeColor();
  watermelon.describeColor();
}

class Watermelon extends Melon {
  Watermelon(String color) : super(color);
  @override
  void describeColor() {
    print("The color of this watermelon is $color.");
  }
}

/// Interfaces
void bMiniExercises() {
  /// Interfaces Mini-exercices
  ///
  /// 1. Create an interface called `Bottle` and add a method to it
  ///    called `open`.
  /// 2. Create a concrete class called `SodaBottle` that implements
  ///    `Bottle` and prints "Fizz fizz" when `open` is called.
  /// 3. Add a factory constructor to `Bottle` that returns a `SodaBottle`
  ///    instance.
  /// 4. Instantiate `SodaBottle` by using the `Bottle` factory constructor
  ///    and call `open` on the object.
  final bottle = Bottle();
  bottle.open();
}

abstract class Bottle {
  factory Bottle() => SodaBottle();
  void open();
}

class SodaBottle implements Bottle {
  @override
  void open() {
    print('Fizz fizz');
  }
}

/// Mixins
void cMiniExercise() {
  /// Mixins Mini-exercices
  ///
  /// 1. Create a class called `Calculator` with a method called `sum`
  ///    that prints the sum of the two arguments you give it.
  /// 2. Extract the logic in `sum` to a mixin called `Adder`.
  /// 3. Use the mixin in `Calculator`.

  final calculator = Calculator();
  calculator.sum(4, 6);
}

// class Calculator {
//   void sum(num a, num b) {
//     print('The sum is ${a + b}.');
//   }
// }

class Calculator with Adder {}

mixin Adder {
  void sum(num a, num b) {
    print('The sum is ${a + b}.');
  }
}

///Challenge:

void challenge1() {
  /// Challenge 1:
  ///
  /// Dart has a class named `Comparable` which is used by the the `sort` method
  /// of `List` to sort its elements. Add a `weight` field to the `Platypus`
  /// class you made in this lesson. Then make `Platypus` implement `Comparable`
  /// so that when you have a list of `Platypus` objects, calling sort on the
  /// list will sort them by weight.
  final karan = Platypus1(weight1: 1.8);
  final soham = Platypus1(weight1: 2.9);
  final jay = Platypus1(weight1: 3.5);
  final shivam = Platypus1(weight1: 5.4);
  final darshan = Platypus1(weight1: 4.7);

  final platypi = [karan, soham, jay, shivam, darshan];

  platypi.forEach((platypus) => print(platypus.weight1));
  print('---');

  platypi.sort();
  platypi.forEach((platypus) => print(platypus.weight1));
}

class Platypus1 extends Animal1 with EggLayer1 implements Comparable {
  Platypus1({this.weight1});
  final weight1;

  @override
  void eat() {
    print('Yum Yum');
  }

  @override
  void move() {
    print('Walk Walk');
  }

  @override
  int compareTo(other) {
    if (this.weight1 > other.weight1) {
      return 1;
    } else if (this.weight1 < other.weight1) {
      return -1;
    }
    return 0;
  }
}

mixin EggLayer1 {
  void layEggs() {
    print('Eggs layed');
  }
}

abstract class Animal1 {
  bool isAlive = true;
  void eat();
  void move();

  @override
  String toString() {
    return "I'm a $runtimeType";
  }
}

void challenge2() {
  /// Challenge 2:
  ///
  /// Design an interface to sit between the business logic of your
  /// note-taking app and a SQL database. After that, implement a fake
  /// database class that will return mock data.

  final database = DataStorage();
  final note = database.findNote(42);
  final allNotes = database.allNotes();
  database.saveNote('Water the flowers.');
  print(note);
  print(allNotes);
}

abstract class DataStorage {
  factory DataStorage() => FakeDatabase();
  String findNote(int id);
  List<String> allNotes();
  void saveNote(String note);
}

class FakeDatabase implements DataStorage {
  @override
  String findNote(int id) {
    return 'This is a note.';
  }

  @override
  List<String> allNotes() {
    return [
      'This is a note.',
      'This is different note.',
      'We are happy.',
    ];
  }

  @override
  void saveNote(String note) {
    // Saving note.
  }
}

void challenge3() {
  /// Challenge 3:
  ///
  /// Dart has a `Duration` class for expressing lengths of time. Make an
  /// extension on `int` so that you can express a duration like so:
  ///
  /// ```
  /// final timeRemaining = 3.minutes;
  /// ```

  final timeRemaining = 3.minutes;
  print(timeRemaining);
}

extension on int {
  Duration get minutes => Duration(minutes: this);
}
