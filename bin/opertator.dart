// if name is not provided(??), it will be 'anon'
// if name is null, cannot access to name.toUpperCase(), so use ?.
String capitalizeName(String? name) => name?.toUpperCase() ?? 'ANON';

void main() {
  capitalizeName("jinho");
  capitalizeName(null);

  String? name;
  name ??= 'jinho'; // if name is null, assign 'jinho'
  name = null;
  name ??= 'another';
  print(name); // another
}
