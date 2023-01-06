// Path: test2.dart
//==============================================================================
// abstract class - blueprint for a class
//==============================================================================
abstract class Human {
  void walk();
}

//==============================================================================
// enum
//==============================================================================
enum Team { red, blue, green, yellow }

enum XPLevel { zero, one, two, three, four, five, six, seven, eight, nine, ten }

//==============================================================================
// class - blueprint for an object
//==============================================================================
class Player extends Human {
  String name;
  // use enum - more readable, less error prone
  XPLevel xp;
  Team team;

  Player({
    required this.name,
    required this.xp,
    required this.team,
  });

  sayHello() {
    print('Hello, my name is $name, I\'m in team $team and I have $xp xp');
  }

  // override abstract method
  @override
  void walk() {
    print('I\'m walking');
  }
}

class Coach extends Human {
  String name;
  Team team;

  Coach({
    required this.name,
    required this.team,
  });

  sayHello() {
    print('Hello, my name is $name, I\'m in team $team');
  }

  // override abstract method
  @override
  void walk() {
    print('I\'m walking');
  }
}
//==============================================================================
// main
//==============================================================================

void main(List<String> args) {
  // create object
  var player = Player(name: 'jinho', xp: XPLevel.one, team: Team.yellow);
  player.name = 'lalala';
  player.xp = XPLevel.five;
  player.team = Team.red;

  print(player.name);
  print(player.xp);
  print(player.team);

  // you can change the value at once
  player
    ..name = 'jinho'
    ..xp = XPLevel.two
    ..team = Team.blue
    ..sayHello();
}
