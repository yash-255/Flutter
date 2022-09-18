///Classes:
import 'dart:math';
import 'user.dart';

///Classes are used to combine data and functions inside a single structure.
///Function inside the class are called method.
///Constructor are special type of methods.
///Constructor are use to create objects.
void main() {
  dartClasses();
  constructors();
  dartObjects();
  staticMembers();

  ///Challenges:-

  //Challenge 1:
  final ernie = Student('Ernie', 'Henson', 95);
  final bert = Student('Bert', 'Oz', 85);
  print('$ernie\n$bert');

  //Challenge 2:
  const sphere = Sphere(radius: 12);
  final volume = sphere.volume;
  final area = sphere.area;
  print('volume: $volume, area: $area');
}

void dartClasses() {
  //Another name for object is instance.
  final user = User();
  // final user = new User();//Syntax before dart version 2.0
  //user.name = 'Ray';
  //user.id = 42;
  //The cascade notation (..) in Dart allows you to make a
  //sequence of operations on the same object
  //..name = 'Ray'
  //..id = 42;
  print(user);
  print(user.toJson());
}

///Constructors are methods that create, or construct, instances
///of a class.
///Long-form constructor:
///In Dart the convention is to put the constructor before the
///property variables.
///User(int id, String name) {
///this.id = id;
///this.name = name;}
///The keyword this in the constructor body allows you to assign variable value
///in constructor.
void constructors() {
  // final user = User(42, 'Ray');
  // final user = User(id: 42, name: 'Ray');
  // final user = User(_id: 42, _name: 'Ray');
  // final anonymousUser = User.anonymous();
  final vicki = User(id: 24, name: 'Vicki');
  // final vicki = User(_id: 24, _name: 'Vicki');
  //vicki.name = 'Nefarious Hacker'; //Output:User(id: 24, name: Nefarious Hacker)
  /*Dart allows you to make variables private by adding an
  underscore (_) in front of their name.*/
  // vicki._name = 'Nefarious Hacker';
  print(vicki);
  // final vicki = User(id: 24, name: 'Vicki');
  // vicki._name = 'Nefarious Hacker';
  // final vicki = User(id: 24, name: 'Vicki');
  // vicki._name = 'Nefarious Hacker';
  // final jb = User(id: -1, name: 'JB Lorenzo');
  final jb = User(id: 100, name: 'JB Lorenzo');
  print(jb);
  const user = User(id: 42, name: 'Ray');
  print(user);
  const anonymousUser = User.anonymous();
  print(anonymousUser);
  final map = {'id': 10, 'name': 'Manda'};
  final manda = User.fromJson(map);
  print(manda);
}

void dartObjects() {
  final myObject = MyClass();
  final anotherObject = myObject;
  print(myObject.myProperty); // 1
  anotherObject.myProperty = 2;
  print(myObject.myProperty); // 2
  const ray = User(id: 42, name: 'Ray');
  print(ray.id);
  print(ray.name);
  // final email = Email();
  // email.value = 'ray@example.com';
  final email = Email('ray@example.com');
  final emailString = email.value;
  print(emailString);
}

void staticMembers() {
  final value = SomeClass.myProperty;
  SomeClass.myMethod();
  final mySingleton = MySingleton.instance;
  // final user = User.fromJson('{"id":42,"name":"Ray"}');
  final map = {'id': 10, 'name': 'Manda'};
  final manda = User.fromJson(map);
  print(manda);
}

///Default constructor
///class Address { var
///value = '';}
///Is equivalent to writing it like this:
class Address {
  Address();
  var value = '';
}

class Email {
  Email(this.value);
  final value;
}

class MyClass {
  int myProperty = 0;
  void myMethod() {
    print('Hello, Dart!');
  }
}

class SomeClass {
  static int myProperty = 0;
  static void myMethod() {
    print('Hello, Dart!');
  }
}

class MySingleton {
  MySingleton._();
  static final MySingleton instance = MySingleton._();
}

///Mini-Exercise:-

///Mini-exercise 1
///
/// Create a class called `Password` and give it a string property
/// called `value`.

// class Password {
//   String value = '';
// }

///Mini-exercise 2
///
/// Override the `toString` method of `Password` so that it prints `value`.

// class Password {
//   String value = '';
//   @override
//   String toString() {
//     return value;
//   }
// }

///Mini-exercise 3
///
/// Add a method to `Password` called `isValid` that returns `true` only
/// if the length of `value` is greater than `8`.

// class Password {
//   String value = '';
//
//   bool isValid() {
//     return value.length > 8;
//   }
//   @override
//   String toString() {
//     return value;
//   }
// }

///Mini-exercise 1
///
/// Given the following class:
/// class Password {
///   String value = '';
/// }
/// Make `value` a `final` variable, but not private.

// class Password {
//   final value = '';
// }

///Mini-exercise 2
///
/// Add a `const` constructor as the only way to initialize a
/// `Password` object.

// class Password {
//   const Password(this.value);
//   final String value;
// }

///Challenges:

/// Challenge 1: Bert and Ernie
///
/// Create a `Student` class with final `firstName` and `lastName`
/// `String` properties and a variable `grade` as an `int` property.
/// Add a constructor to the class that initializes all the properties.
/// Add a method to the class that nicely formats a `Student` for printing.
/// Use the class to create students `bert` and `ernie` with grades of 95 and
/// 85, respectively.

class Student {
  Student(this.firstName, this.lastName, this.grade);

  final String firstName;
  final String lastName;
  int grade;

  @override
  String toString() => '$firstName $lastName: $grade';
}

/// Challenge 2: Spheres
///
/// Create a `Sphere` class with a `const` constructor that takes a positive
/// length `radius` as a named parameter. Add getters for the the volume and
/// surface area but none for the radius. Don't use the `dart:math` package
/// but store your own version of `pi` as a `static` constant. Use your class
/// to find the volume and surface area of a sphere with a radius of 12.
class Sphere {
  const Sphere({required int radius})
      : assert(radius > 0),
        _radius = radius;

  final int _radius;

  double get volume => 4 / 3 * pi * _radius * _radius * _radius;
  double get area => 4 * pi * _radius * _radius;

  static const double pi = 3.14159265359;
}
