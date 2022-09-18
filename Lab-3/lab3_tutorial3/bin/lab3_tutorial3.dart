/**
 *Getting Characters.
 */
import 'dart:math';
import 'package:characters/characters.dart';

void main() {
  const letter = 'a';
  //Dart does not have char datatype.
  //So the above statement is still a String.

  //Dart strings are a collection of UTF-16 code units.
  //UTF-16 is a way to encode Unicode values by using 16-bit numbers.
  var salutation = 'Hello!';
  print(salutation.codeUnits);
  //Output:72,101,108,108,111,33

  //These UTF-16 code units have the same value as Unicode
  //code points for most of the characters you see on a day to
  //day basis.
  const dart = '🎯';
  print(dart.codeUnits); //Output:55356,57263
  print(dart.runes); //Output:127919

  /// Unicode grapheme clusters.
  const flag = '🇲🇳';
  print(flag.runes);

  const family = '👨‍👩‍👧‍👦';
  print(family.runes);

  print(family.length);
  print(family.codeUnits.length);
  print(family.runes.length);
  print(family.characters.length);
}
