void main() {
  /// Lists
  basicList();
  mutableAndImmutableLists();
  listProperties();
  loopingOverElementsOfList();
  spreadOperator();
  collectionIf();
  collectionFor();

  /// Sets
  creatingSets();
  operationsOnSets();
  intersectionsAndUnions();

  /// Maps
  creatingEmptyMaps();
  initializingMapWithValues();
  operationsOnMaps();
  propertiesOfMaps();
  checkingForKeyValueExistence();
  loopingOverElementsOfMap();

  /// Higher order methods
  mappingOverList();
  filteringList();
  consolidatingList();
  sortingList();
  combiningHigherOrderMethods();

  //Mini-exercise:
  aMiniExercise1();
  aMiniExercise2();
  aMiniExercise3();

  bMiniExercise1();
  bMiniExercise2();
  bMiniExercise3();

  cMiniExercise1();
  cMiniExercise2();

  //Challenges:
  challenge1();
  challenge2();
  challenge3();
}

void basicList() {
  //List is use to store the collection of object with same data types.
  //List is similar to array in other language.

  //Basic way to create list.
  var desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
  desserts = []; //This is an empty list.
  // var snacks = [];//Initializing an empty list.
  // List<String> snacks = [];//This statement can lose type safety.

  var snacks = <String>[];
  //The angle brackets < > here are the notation for generic types in Dart.
  //A generic list means you can have a list of anything.
  //You can replace nay dattypes with String.
  //Create an empty list is to use var or final
  //and move the generic type to the right.

  //Printing an List.
  desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
  print(desserts);

  //To access the elements of a list, you reference its index via
  //subscript notation where the index number goes within
  //square brackets after the list name.
  final secondElement = desserts[1];
  print(secondElement);
  //List ar zero based so if you fetch 2nd index than it will give index 3.

  //If you forget the index than you can use indexOf method.
  final index = desserts.indexOf('pie');
  final value = desserts[index];
  print(index);
  print(value);

  //You can assign value to specific element using index.
  desserts[1] = 'cake';
  print(desserts);

  //By using add you can add new entries.
  desserts.add('brownies');
  print(desserts);
  //Congrates you add an new element.

  //By using remove method you can remove an element.
  desserts.remove('cake');
  print(desserts);
  //Cake is eaten but there is more snack left.
}

void mutableAndImmutableLists() {
  //Using var type you can swap different elements.
  //It is called mutable list
  // var desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
  // desserts = [];
  // desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];

  //But by using final type you cannot do so.
  //Immutable list means it cannot change its length or element.
  // final desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
  // desserts = [];
  // desserts = ['cake', 'ice cream'];
  // desserts = someOtherList;

  // final desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
  // desserts.remove('cookies');//OK
  // desserts.remove('cupcakes');//OK
  // desserts.add('ice cream');//OK

  //const type makes the list deeply immutable.
  // const desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
  // desserts.add('brownie');//Not allowed
  // desserts.remove('pie');//Not allowed
  // desserts[0] = 'fudge';//Not allowed

  //If you aren’t able to use const for the variable itself, you can
  //still make the value deeply immutable by adding the optional
  //const keyword before the value.
  final desserts = const ['cookies', 'cupcakes', 'donuts', 'pie'];
  final modifiableList = [DateTime.now(), DateTime.now()];
  //DateTime.now() return current date and time when called.
  final unmodifiableList = List.unmodifiable(modifiableList);
}

void listProperties() {
  const drinks = ['water', 'milk', 'juice', 'soda'];
  //Printing first and last element.
  print(drinks.first);
  print(drinks.last);

  print(drinks.isEmpty); //False.
  print(drinks.isNotEmpty); //True.
  print(drinks.length == 0); //False
  print(drinks.length > 0); //True
}

void loopingOverElementsOfList() {
  const desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
  for (var dessert in desserts) {
    print(dessert);
    //Iterating and printing from the list
  }
  //Different Ways:
  desserts.forEach((dessert) => print(dessert));
  desserts.forEach(print);
  //Output:
  //cookies
  //cupcakes
  //donuts
  //pie
}

void spreadOperator() {
  //spread operator(...) is use to expand one list into another.
  const pastries = ['cookies', 'croissants'];
  const candy = ['Junior Mints', 'Twizzlers', 'M&Ms'];
  const desserts = ['donuts', ...pastries, ...candy];
  print(desserts);
  //Output:[donuts, cookies, croissants, Junior Mints, Twizzlers, M&Ms]

  List<String>? coffees;
  final hotDrinks = ['green tea', ...?coffees]; //Null spread operator.
  print(hotDrinks);
  //hotDrinks will only include milk and tea.
}

void collectionIf() {
  //collection if is use to determine whether the element is included
  //based on some condition.
  const peanutAllergy = true;

  const candy = [
    'Junior Mints',
    'Twizzlers',
    if (!peanutAllergy) 'Reeses',
  ];
  print(candy);
  //Output:[Junior Mints, Twizzlers].
}

void collectionFor() {
  //Collection for is used to iterate over list and generate another list.
  const deserts = ['gobi', 'sahara', 'arctic'];
  var bigDeserts = [
    'ARABIAN',
    for (var desert in deserts) desert.toUpperCase(),
  ];
  print(bigDeserts);
  //Output:[ARABIAN, GOBI, SAHARA, ARCTIC].
}

void creatingSets() {
  //Set is use to create a unique element in collection.
  //Duplicate are not allowed.
  // final Set<int> someSet = {}; //Empty set.
  final someSet = <int>{}; //Only interger are allowed in this set.
  final anotherSet = {1, 2, 3, 1}; //Type:Set<int>.
  print(anotherSet); //Output:{1, 2, 3}.
}

void operationsOnSets() {
  //contains() is use to check whether set contains any value.
  //contains method returns boolean value.
  final anotherSet = {1, 2, 3, 1};
  print(anotherSet.contains(1)); //true
  print(anotherSet.contains(99)); //false

  //Adding an item in set.
  final someSet = <int>{};
  someSet.add(42);
  someSet.add(2112);
  someSet.add(42);
  print(someSet); //Output:{42, 2112}.

  //Removing an element in set.
  someSet.remove(2112);
  print(someSet); //Output:{42}.

  //You can add multiple item using addAll() method.
  someSet.addAll([1, 2, 3, 4]);
  print(someSet);
}

void intersectionsAndUnions() {
  final setA = {8, 2, 3, 1, 4};
  final setB = {1, 6, 5, 4};

  final intersection = setA.intersection(setB);
  print(intersection); //Output:{1, 4}

  final union = setA.union(setB);
  print(union); //Output:{8, 2, 3, 1, 4, 6, 5}
}

//All the operation there are in list are applicable in set.
//collection if
//collection for
//for-in loops
//forEach loops
//spread operators

void creatingEmptyMaps() {
  //Map is a generic type, but Map takes two
  //type parameters: one forthe key and one forthe value.

  // final Map<String, int> emptyMap = {};

  //String is the type forthe key, and int is the type for the value.
  final emptyMap = <String, int>{};

  final emptySomething = {}; //It is map an not set.
  //Because map came earlier than set.

  final mySet = <String>{};
  print(emptyMap.length);
}

void initializingMapWithValues() {
  final inventory = {
    'cakes': 20,
    'pies': 14,
    'donuts': 37,
    'cookies': 141,
  };
  print(inventory);
  //Output:{cakes: 20, pies: 14, donuts: 37, cookies: 141}.

  final digitToWord = {
    1: 'one',
    2: 'two',
    3: 'three',
    4: 'four',
  };
  print(digitToWord);
  //Output:{1: one, 2: two, 3: three, 4: four}

  // final treasureMap = {
  //   'garbage': 'in the dumpster',
  //   'glasses': 'on your head',
  //   'gold': 'in the cave',
  //   'gold': 'under your mattress',
  // };
  //Key of the map should be unique so the above code will throw an error.

  final treasureMap = {
    'garbage': ['in the dumpster'],
    'glasses': ['on your head'],
    'gold': ['in the cave', 'under your mattress'],
  };
  //Every key contains list of item but every key name is unique.

  final myHouse = {
    'bedroom': 'messy',
    'kitchen': 'messy',
    'living room': 'messy',
    'code': 'clean',
  };
}

void operationsOnMaps() {
  final inventory = {
    'cakes': 20,
    'pies': 14,
    'donuts': 37,
    'cookies': 141,
  };

  //You can access element of map similar to list by using subscript notation.
  //You can use key rather than index.
  //A map will return null if the key doesn’t exist.
  final numberOfCakes = inventory['cakes'];
  print(numberOfCakes?.isEven); //True

  //Adding an element
  inventory['brownies'] = 3;
  print(inventory);

  //Updating an element
  inventory['cakes'] = 1;
  print(inventory);

  //Removing an element.
  inventory.remove('cookies');
  print(inventory);
}

void propertiesOfMaps() {
  final inventory = {'cakes': 1, 'pies': 14, 'donuts': 37, 'brownies': 3};
  print(inventory.isEmpty); //False
  print(inventory.isNotEmpty); //True
  print(inventory.length); //4

  print(inventory.keys); //Output:(cakes, pies, donuts, brownies)
  print(inventory.values); //Output:(1, 14, 37, 3)
}

void checkingForKeyValueExistence() {
  final inventory = {'cakes': 1, 'pies': 14, 'donuts': 37, 'brownies': 3};
  print(inventory.containsKey('pies')); //Output:True
  print(inventory.containsValue(42)); //Output:False
}

void loopingOverElementsOfMap() {
  final inventory = {'cakes': 1, 'pies': 14, 'donuts': 37, 'brownies': 3};
  // for (var item in inventory) {
  //   print(inventory[item]);
  // }
  //Error:The type 'Map<String, int>' used in the 'for' loop
  //must implement Iterable.

  for (var item in inventory.keys) {
    print(inventory[item]);
  }

  inventory.forEach((key, value) => print('$key -> $value'));

  for (final entry in inventory.entries) {
    print('${entry.key} -> ${entry.value}');
  }
  //Output:
  //cakes -> 1
  //pies -> 14
  //donuts -> 37
  //brownies -> 3
}

void mappingOverList() {
  const numbers = [1, 2, 3, 4];
  final squares = numbers.map((number) => number * number);
  print(squares); //Output:(1, 4, 9, 16)
  print(squares.toList()); //Output:[1, 4, 9, 16]
}

void filteringList() {
  const numbers = [1, 2, 3, 4];
  final squares = numbers.map((number) => number * number);
  final evens = squares.where((square) => square.isEven);
  print(evens); //Output:(4, 16)

  const desserts = ['cookies', 'cake', 'donuts', 'pie'];
  final dessert = desserts.firstWhere((word) => word.length < 5);
  print(dessert);
}

void consolidatingList() {
  //One way to combine all of the elements of a list into a single
  //value is to use the reduce method.
  const amounts = [199, 299, 299, 199, 499];
  final total = amounts.reduce((sum, element) => sum + element);
  // final total = amounts.fold(0, (sum, element) => sum + element);
  //If you try to call reduce on an empty list, you’ll get an error.
  //Forthatreason, using fold may be more reliable when a
  //collection has a possibility of containing zero elements. The
  print(total);
}

void sortingList() {
  //While where, reduce and fold all work equally well on lists
  //or sets, you can only call sort on a list.
  final desserts = ['cookies', 'pie', 'donuts', 'brownies'];
  desserts.sort();
  print(desserts); //Output:[brownies, cookies, donuts, pie]

  const constantList = ['cookies', 'pie', 'donuts', 'brownies'];
  // constantList.sort();

  var dessertsReversed = desserts.reversed;
  print(dessertsReversed); //Output:(pie, donuts, cookies, brownies).

  // final desserts = ['cookies', 'pie', 'donuts', 'brownies'];
  // final dessertsReversed = desserts.reversed;
  // print(desserts);//Output:[cookies, pie, donuts, brownies]
  // print(dessertsReversed);//Output:(brownies, donuts, pie, cookies)

  desserts.sort((d1, d2) => d1.length.compareTo(d2.length));
  print(desserts); //Output:[pie, donuts, cookies, brownies]
}

void combiningHigherOrderMethods() {
  const desserts = ['cake', 'pie', 'donuts', 'brownies'];
  final bigTallDesserts = desserts
      .where((dessert) => dessert.length > 5)
      .map((dessert) => dessert.toUpperCase());
  print(bigTallDesserts); //Output:(DONUTS, BROWNIES)
}

//When to use list, set, maps:
// 1.If order matter choose list.Always insert at the end of the list to keep
//   thing going smoothly.
// 2.Set is use when you want to see is something is present in a collection
//   or not.
// 3.Map is used map when you repeatedly search for a value by key.
//   Fastest way to search is to search by key.

///Mini-Exercise:

void aMiniExercise1() {
  /// Lists: Mini-exercise 1
  ///
  /// Create an empty list of type `String`. Call it `months`. Use
  /// the `add` method to add the names of the twelve months.
  final months = <String>[];
  months.add('January');
  months.add('February');
  months.add('March');
  months.add('April');
  months.add('May');
  months.add('June');
  months.add('July');
  months.add('August');
  months.add('September');
  months.add('October');
  months.add('November');
  months.add('December');
  print(months);
}

void aMiniExercise2() {
  /// Lists: Mini-exercise 2
  ///
  /// Make an immutable list with the same elements as in Mini-exercise 1.
  const months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];
  print(months);
}

void aMiniExercise3() {
  /// Lists: Mini-exercise 3
  ///
  /// Use collection `for` to create a new list with the month names in
  /// all uppercase.

  const months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];
  final bigMonths = [for (var month in months) month.toUpperCase()];
  print(bigMonths);
}

void bMiniExercise1() {
  /// Maps: Mini-exercise 1
  ///
  /// Create a map with the following keys: `name`, `profession`, `country`
  /// and `city`. For the values, add your own information.

  final myMap = {
    'name': 'Karan Raval',
    'profession': 'Student at DDU',
    'country': 'India',
    'city': 'Nadiad',
  };
  print(myMap);
}

void bMiniExercise2() {
  /// Maps: Mini-exercise 2
  ///
  /// You suddenly decide to move to Toronto, Canada. Programmatically update
  /// the values for `country` and `city`.

  final myMap = {
    'name': 'Li Ming',
    'profession': 'software engineer',
    'country': 'China',
    'city': 'Beijing',
  };
  myMap['country'] = 'Canada';
  myMap['city'] = 'Toronto';
  print(myMap);
}

void bMiniExercise3() {
  /// Maps: Mini-exercise 3
  ///
  /// Iterate over the map and print all the values.

  final myMap = {
    'name': 'Li Ming',
    'profession': 'software engineer',
    'country': 'Canada',
    'city': 'Toronto',
  };

  for (var value in myMap.values) {
    print(value);
  }

  // Or:
  myMap.forEach((key, value) => print(value));
}

void cMiniExercise1() {
  /// Higher order methods: Mini-exercise 1
  ///
  /// Given the following exam scores:
  ///
  /// final scores = [89, 77, 46, 93, 82, 67, 32, 88];
  ///
  /// Use `sort` to find the highest and lowest grades.
  final scores = [89, 77, 46, 93, 82, 67, 32, 88];
  scores.sort();
  final lowest = scores.first;
  final highest = scores.last;
  print(lowest);
  print(highest);
}

void cMiniExercise2() {
  /// Higher order methods: Mini-exercise 2

  /// Use where to find all the B grades, that is, all the scores
  /// between 80 and 90.

  final scores = [89, 77, 46, 93, 82, 67, 32, 88];
  final bGrades = scores.where((score) => score >= 80 && score < 90);
  print(bGrades);
}

///Challenegs:

const paragraphOfText = 'Lorem Ipsum is simply dummy text of the printing and'
    'typesetting industry. Lorem Ipsum has been the industry'
    'standard dummy text ever since the 1500s, when an unknown'
    'printer took a galley of type and scrambled it to make a type specimen book.';

void challenge1() {
  /// Challenge 1:
  ///
  /// Write a function that takes a paragraph of text and returns a
  /// collection of unique String characters that the text contains.
  Set<String> uniqueCodePoints(String text) {
    return text.runes
        .map((codePoint) => String.fromCharCode(codePoint))
        .toSet();
  }

  print(uniqueCodePoints(paragraphOfText));
}

void challenge2() {
  /// Challenge 2:
  ///
  /// Repeat Challenge 1 but this time have the function return a
  /// collection that contains the frequency count of every unique
  /// character.
  Map<String, int> characterFrequencyMap(String text) {
    final characterFrequencyMap = <String, int>{};
    for (var codePoint in text.runes) {
      final character = String.fromCharCode(codePoint);
      final frequency = characterFrequencyMap[character] ?? 0;
      characterFrequencyMap[character] = frequency + 1;
    }
    return characterFrequencyMap;
  }

  print(characterFrequencyMap(paragraphOfText));
}

void challenge3() {
  /// Challenge 3:
  ///
  /// Create a class called `User` with properties for `id` and `name`.
  /// Make a `List` with three users, specifying any appropriate names
  /// and IDs you like. Then write a function that converts your user
  /// list to a list of maps whose keys are `id` and `name`.
  final users = [
    User(1, 'Yash'),
    User(2, 'Shivam'),
    User(3, 'Soham'),
  ];
  List<Map<String, Object>> usersToMapList(List<User> users) {
    final userMapList = <Map<String, Object>>[];
    for (var user in users) {
      final userMap = {
        'id': user.id,
        'name': user.name,
      };
      userMapList.add(userMap);
    }
    return userMapList;
  }

  print(usersToMapList(users));
}

class User {
  User(this.id, this.name);
  final int id;
  final String name;
}
