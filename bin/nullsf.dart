// bool isEmpty(String s) => s.length == 0;
// isEmpty(null); -- error (not runtime error)


void main(){
  // nullable type
  String? name = "Dart";
  name = null;

  // name.length; // error
  name?.length; // null safe operator
  if(name != null){
    // compiler knows that name is not null
    print(name.length);
  }
}
