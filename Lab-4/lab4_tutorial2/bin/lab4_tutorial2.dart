///Nullanility
///Sound Null safety prevents errors that result from unintentional access of
///variables set to null
///Null means “no value” or “absence of a value”.
///Null cannot be assigned to variable of type 'int'.
///Most programmer forget that null exist in the code.
import 'dart:math';

void main() {
  // Null overview
  whatNullMeans();
  problemWithNull();
  nullableVsNonNullable();

  // Handling nullable types
  handlingNullableTypes();
  typePromotion();
  ifNullOperator();
  nullAwareAssignmentOperator();
  nullAwareAccess();
  nullAssertionOperator();
  nullAwareCascadeOperator();
  nullAwareIndexOperator();
  nullableInstanceVariables();
  lateKeyword();

  ///Mini-Exercise:-
  MiniExercise1();
  MiniExercise2();
  MiniExercise3();

  ///Challenges:-
  challenge1();
  challenge2();
}

void whatNullMeans() {
  int postalCode = 12345;
  // int postalCode = -1;
  //Here we have to remember what '-1' in the code reperesent.
  // int postalCode = null;
  //Null is know to everyone so if we assugn null than we don't need to explain
  //what it menas.
}

void problemWithNull() {
  bool isPositive(int anInteger) {
    return !anInteger.isNegative;
  }

  print(isPositive(3)); //True
  print(isPositive(-1)); //False
  // print(isPositive(null));//Error Can't assign value to int
}

void nullableVsNonNullable() {
  ///Dart types are non-nullable by default.
  ///Nullable types end with a question mark(?) while non-nullable types do not.
  int myInt = 1;
  double myDouble = 3.14159265;
  bool myBool = true;
  String myString = 'Hello, Dart!';
  // User myUser = User(id: 42, name: 'Ray');

  //int postalCode = null;

  int? age;
  double? height;
  String? message;
  print(age);
  print(height);
  print(message);
}

void handlingNullableTypes() {
  ///Dart now makes it impossible to forget
  ///because you really can’t do much at all with a nullable value
  ///until you’ve dealt with the possibility of null.
  String? name;
  // print(name.length);
  //Error:The property 'length' can't be unconditionally
  //accessed because the receiver can be 'null'.
}

void typePromotion() {
  //Dart analyzer is the tool which tells you what the compile time error
  //and warning are.
  String? name;
  name = 'Ray';
  print(name.length);

  bool isPositive(int? anInteger) {
    if (anInteger == null) {
      return false;
    }
    return !anInteger.isNegative;
  }
}

void ifNullOperator() {
  //One very convenient way to handle nullvalues is to use the
  //double question mark (??),also known as the if-null operator.
  String? message;
  final text = message ?? 'Error';
  print(text);

  // String text;
  // if (message == null) {
  //   text = 'Error';
  // } else {
  //   text = message;
  // }
  // print(text);
}

void nullAwareAssignmentOperator() {
  //This operator assign the value to object,if the operator is null.
  double? fontSize;
  fontSize = fontSize ?? 20.0;
}

void nullAwareAccess() {
  //Otehr name of nullAwareAccess if null-aware method invocation operator.
  //It return null if the left hand side is null.
  //Other wise rewturn the of the right hand side.w
  int? age;
  print(age?.isNegative); //Null
  print(age?.toDouble());
}

void nullAssertionOperator() {
  //Is sometime you know the value of variable is not null than you can
  //convert that value to non-nullable using nullAsserionOperator(!).

  //String nonNullableString = nullableString!;
  //Put operator (!) at the end of the nullableString.

  bool? isBeautiful(String? item) {
    if (item == 'flower') {
      return true;
    } else if (item == 'garbage') {
      return false;
    }
    return null;
  }

  //bool flowerIsBeautiful = isBeautiful('flower');
  //Error:A value of type 'bool?' can't be assigned to a v1ariable of type bool.

  //bool flowerIsBeautiful = isBeautiful('flower')!;
  //No error as bool is subtype of bool? .

  //bool flowerIsBeautiful = isBeautiful('flower') as bool;
  //Above statement can sometime crash the app.

  bool flowerIsBeautiful = isBeautiful('flower') ?? true;
  //Leave the decision to the function using if-null operator and give
  //default value.
}

void nullAwareCascadeOperator() {
  //If you know that the object is not-null than you can use the
  //CascadeOperator(..).

  // User user = User()
  //   ..name = 'Ray'
  //   ..id = 42;

  //If the object is null than you can use nullAwareCascadeOperator (?..).
  // User? user;
  // user
  //   ?..name = 'Ray'
  //   ..id = 42;
  // String? lengthString = user?.name?.length.toString();
}

// class User {
//   String? name;
//   int? id;
// }

void nullAwareIndexOperator() {
  //When you have element of list as null than you can
  //use nullAwareIndexOperator (?[])
  List<int>? myList = [1, 2, 3];
  myList = null;
  int? myItem = myList?[2];
  print(myItem);
}

void initializingNonNullableClassFields() {
  // final user = User(name: null);
}
// class User {
//   String name;
// }
// class User {
//   String name = 'Karan';
// }
// class User {
//   User(this.name);
//   String name;
// }
// class User {
//   User(String name)
//     : _name = name;
//   String _name;
// }
// class User {
//   User([this.name = 'Karan']);
//   String name;
// }
// class User {
//   User({this.name = 'Karan'});
//   String name;
// }
// class User {
//   User({required this.name});
//   String name;
// }

void nullableInstanceVariables() {
  //final user = User(name: null);//Error.
  //The argument type 'Null' can't be assigned to th eparameter type 'String'

  bool isLong(String? text) {
    if (text == null) {
      return false;
    }
    return text.length > 100;
  }
}

// class User {
//   User({this.name});
//   String? name;
// }

// class TextWidget {
//   String? text;
//   bool isLong() {
//     if (text == null) {
//       return false;
//     }
//     //return text.length > 100;
//     //Error:The property 'length' can't be unconditionally
//     //accessed because the receiver can be 'null'.
//
//     return text!.length > 100;
//     //Even if the compiler don’t know that text isn’t null, you
//     //know it’s not, so you apply nullAssertionOperator (!).
//   }
// }
class TextWidget {
  String? text;
  bool isLong() {
    final text = this.text; // shadowing if
    if (text == null) {
      return false;
    }
    return text.length > 100;
  }
}

void lateKeyword() {
  // final user = User();
  // print(user.name);
}

// class User {
//   User(this.name);

//   final String name;
//   late final int _secretNumber = _calculateSecret();

//   int _calculateSecret() {
//     return name.length + 42;
//   }
//   //Error:The instance member '_calculateSecret' can't be
//   //accessed in an initializer.
// }

// class User {
//   User(this.name) {
//     _secretNumber = _calculateSecret();
//   }
//   late final int _secretNumber;
//   //late keyword let you initialize return value on the basis of
//   //complex alogrithm.
//   //Using late means dart doesn't initialize the variable right away
//   //This is know as lazy initialization.
//   final String name;

//   int _calculateSecret() {
//     return name.length + 42;
//   }
// }
//You can also use late with non-final variable.

//Danger of being late.
// class User {
//   late String name;
// }
// final user= U.ser();
// print(user.name);
//Error:LateInitializationError: Field 'name' has not been initialized.
//It's dangerous to use late when you're not initializing it either
//in the constructor body or in the same line that you declare it.

//Benefits of being late.
//In some cases it might take complexx calculation to assign the data type of
//the variable so here is the benefit that you can use lazy initialization
//to get the data type of the variable after complex calculation
//You can also use lazy keyword with nullable variable.
class SomeClass {
  late String? value = doHeavyCalculation();
  String? doHeavyCalculation() {
    // do heavy calculation
  }
}

///Mini-exercise:-

void MiniExercise1() {
  ///Mini-exercise 1
  ///
  /// Create a String variable called `profession`, but don't give it a value.
  /// Then you'll have `profession` `null`. :]

  String? profession;
  print(profession);
}

void MiniExercise2() {
  ///Mini-exercise 2
  ///
  /// Give profession a value of “basketball player”.

  String? profession;
  profession ??= 'basketball player';
  print(profession);
}

void MiniExercise3() {
  /// Null overview: Mini-exercise 3
  ///
  /// Write the following line and then hover your cursor over
  /// the variable name. What type does Dart infer iLove to be?

  const iLove = 'Dart'; //Type:String.
}

///Challenges:-

void challenge1() {
  /// Challenge 1:
  ///
  /// Write a function that randomly returns `42` or `null`. Assign
  /// the return value of the function to an variable named `result` that
  /// will never be `null`. Give `result` a default of `0` if the function
  /// returns `null`.
  int? randomNothing()
  //If you put return type as int it will give you error.
  //Error:A value of type 'int?' can't be returned from the function
  //'randomNothing' because it has a return type of 'int'.
  {
    final isTrue = Random().nextBool();
    return (isTrue) ? 42 : null;
  }

  final result = randomNothing() ?? 0;
  print(result);
}

void challenge2() {
  /// Challenge 2:
  ///
  /// People around the world have different customs for giving names to
  /// children. It would be difficult to create a data class to accurately
  /// represent them all, but try it like this:
  ///
  /// - Create a class called `Name` with `givenName` and `surname` properties.
  /// - Some people write the surname last and some write it first. Add a
  ///   Boolean property called `surnameIsFirst` to keep track of this.
  /// - Not everyone in the world has a surname.
  /// - Add a `toString` method that prints the full name.
  ///
  /// Use sound null safety.
  // final gnfsrl = Name(givenName: 'Ray', surname: 'Wenderlich');
  // final srfgnl = Name(surname: 'Li', givenName: 'Ming', surnameIsFirst: true);
  // final gn = Name(givenName: 'Baatar');

  // print(gnfsrl);//gnfsrl:givenName first and surname last
  // print(srfgnl);//srfgnl:Surname first and givenName last
  // print(gn);//Only givenName
}

// class Name {
//   Name({
//     required this.givenName,
//     this.surname,
//     this.surnameIsFirst = false,
//   });

//   final String givenName;
//   final String? surname;
//   final bool surnameIsFirst;

//   @override
//   String toString() {
//     if (surname == null) {
//       return givenName;
//     }
//     if (surnameIsFirst) {
//       return '$surname $givenName';
//     }
//     return '$givenName $surname';
//   }
// }
