import 'package:tour/tour.dart' as tour;

// void main(List<String> arguments) {
//   print('Hello world: ${tour.calculate()}!');
// }

void main(){
  print("Dart is awesome");

  // dart knows the type of the variable
  // inner function or method
  var name = "Dart";
  // inner class
  String name2 = "Dart";

  // name = 1; // error
  name = "jinho";

  // dynamic type - can be changed 
  var test;
  dynamic test2;
  test = 1;
  test = "jinho";

  // check the type
  if(test2 is String){
    print("test2 is String");
  }
}

