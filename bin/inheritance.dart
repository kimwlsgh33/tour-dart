//================================================================
//
//================================================================
class Human {
  final String name;

  Human(this.name);

  void sayHello() {
    print('Hello, my name is $name');
  }
}

enum Team { red, blue }

//================================================================
// extend class
//================================================================
class Player extends Human {
  final Team team;

  Player({
    required String name,
    required this.team,
  }) : super(name); // call super class constructor

  @override
  void sayHello() {
    super.sayHello();
    print('I\'m in team $team');
  }
}

//================================================================
// main
//================================================================
void main(List<String> args) {
  var player = Player(name: 'jinho', team: Team.blue);
  player.sayHello();
}
