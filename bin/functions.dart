//================================================
// positional parameters
//================================================
String sayHello(
  String name,
  int age,
  String country,
) {
  return 'hello $name nice to meet you, you are $age years old and you are from $country';
}

//================================================
// fat arrow function
//================================================
String sayBye(String name) => "bye $name";
num add(num a, num b) => a + b;

//================================================
// named parameters ( default value ) - null safety
//================================================
String sayHello2({
  String name = 'anon',
  int age = 99,
  String country = 'unknown',
}) {
  return 'hello $name nice to meet you, you are $age years old and you are from $country';
}

String sayHello3({
  required String name,
  required int age,
  required String country,
}) {
  return 'hello $name nice to meet you, you are $age years old and you are from $country';
}

//================================================
// optinal positional parameters
String sayHello4(String name, int age, String country,
    [String? job, String? hobby]) {
  return 'hello $name nice to meet you, you are $age years old and you are from $country';
}

//================================================
// main
//================================================
void main() {
  // bad way
  print(sayHello('jinho', 25, 'korea'));
  print(sayBye('jinho'));

  // good way - named parameters ( just check the order ), you can use auto complete
  print(sayHello2(
    name: 'jinho',
    age: 25,
    country: 'korea',
  ));
  print(sayHello2());

  // good way - required parameters
  print(sayHello3(
    name: 'jinho',
    age: 25,
    country: 'korea',
  ));
  // print(sayHello3()); // error

  // good way - nullable parameters
  print(sayHello4(
    'jinho',
    25,
    'korea',
    'developer',
    'guitar',
  ));
  print(sayHello4(
    'jinho',
    25,
    'korea',
  ));
}
