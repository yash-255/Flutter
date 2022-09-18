/*As this is your own custom method and you’re not
  overriding a method that belongs to another class, you don’t
  add the @override annotation.*/

//Words that start with @ are called annotations.
//Annotations give the compiler more information
//so that it can help you out at compile time.

//@override annotation is telling both you and the compiler
//that toString is a method in Object.
class User {
  const User({
    this.id = _anonymousId,
    this.name = _anonymousName,
  }) : assert(id >= 0);

  const User.anonymous() : this();

  // User.fromJson(Map<String, Object> json)
  //     : id = json['id'] as int,
  //       name = json['name'] as String;

  // factory User.fromJson(Map<String, Object> json) {
  //   final userId = json['id'] as int;
  //   final userName = json['name'] as String;
  //   return User(id: userId, name: userName);
  // }

  static User fromJson(Map<String, Object> json) {
    final userId = json['id'] as int;
    final userName = json['name'] as String;
    return User(id: userId, name: userName);
  }

  final String name;
  final int id;

  static const _anonymousId = 0;
  static const _anonymousName = 'anonymous';

  String toJson() {
    return '{"id":$id,"name":"$name"}';
    //Output:{"id":42,"name":"Ray"}
  }

  @override
  String toString() {
    return 'User(id: $id, name: $name)';
    //Output:User(id: 42, name: Ray)
  }
}
