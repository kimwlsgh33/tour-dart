enum Team { red, blue }

//============================================================
// mixin is a way to reuse code in multiple classes
//============================================================
// mixin has no constructor
class Strong {
  final double strenghtLevel = 1500.99;
}

class QuickRunner {
  void runQuickly() {
    print('I\'m running quickly');
  }
}

class Tall {
  final double height = 1.99;
}

//============================================================
// get the code from Strong and QuickRunner - without inheritance
//============================================================
class Player with Strong, QuickRunner, Tall {
  final Team team;

  Player(this.team);

  void sayHello() {
    print('Hello, I\'m in team $team');
  }
}

//============================================================
class Horse with Strong, QuickRunner {}

class Kid with QuickRunner {}

//============================================================
// main
//============================================================
void main(List<String> args) {
  var player = Player(Team.blue);
  player.sayHello();
  player.runQuickly();
  print(player.height);
}
