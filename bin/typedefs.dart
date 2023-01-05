typedef ListOfInts = List<int>; // alias

ListOfInts reverse(ListOfInts list) {
  var reversed = list.reversed.toList();
  return reversed;
}

void main(List<String> args) {
  var list = [1, 2, 3, 4, 5];

  var reversed = reverse(list);
}
