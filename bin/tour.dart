import 'package:tour/tour.dart' as tour;

// void main(List<String> arguments) {
//   print('Hello world: ${tour.calculate()}!');
// }

void main() {
  print("Dart is awesome");

  //================================================================
  // dart knows the type of the variable
  //================================================================
  // inner function or method
  var first = "Dart";
  // inner class
  String first2 = "Dart";
  // name = 1; // error
  first = "jinho";
  print(first + first2);
  //================================================================
  // dynamic type - can be changed
  //================================================================
  var first3;
  dynamic first4;
  first3 = 1;
  first3 = "jinho";
  // check the type
  if (first4 is String) {
    print("first is String");
    print(first4.isNotEmpty);
  }
  print(first3);
  //================================================================
  // nullable type
  //================================================================
  String? name = "Dart";
  name = null;

  // name.length; // error
  name?.length; // null safe operator
  if (name != null) {
    // compiler knows that name is not null
    print(name.length);
  }

  final String test = 'test';
  final test1 = 'test';
  // final var test2 = 'test'; // error
  // test = 'test2'; // error

  //================================================================
  // late - used when the variable is initialized later
  //================================================================
  late String test3; // not initialized
  // print(test3); // error - not initialized
  // do something
  test3 = 'test3'; // initialized
  print(test3); // access - no error

  //================================================================
  // const - compile time constant / immutable - ex) API key
  // final - runtime constant / immutable
  //================================================================
  const String test4 = 'test4';
  // test4 = 'test5'; // error
}
