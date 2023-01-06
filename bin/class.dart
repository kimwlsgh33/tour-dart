//================================================================
// bad way
//================================================================
class Player2 {
  late final String name;
  late int xp;

  // Player(this.exp, {this.name = 'anon'});
  // if user does not provide value?? <- dart is woring on this
  Player2(String name, int xp) {
    this.name = name;
    this.xp = xp;
  }
}

//================================================================
// good way
//================================================================
class Player3 {
  final String name;
  final int xp;

  // constructor no need to write parameters type & this.name = name; - dart will do it for you
  Player3(this.name, this.xp);
}

//================================================================
class Player {
  final String name;
  int age, xp, level, health;
  String team;

  // constructor
  Player({
    required this.name,
    required this.age,
    required this.xp,
    required this.level,
    required this.health,
    required this.team,
  });

  // constructor - positional parameters
  Player.createRedPlayer(
    String name,
    int age,
  )   : this.name = name,
        this.age = age,
        this.xp = 0,
        this.level = 1,
        this.health = 100,
        this.team = 'red';

  // constructor - named parameters
  Player.createBluePlayer({
    required String name,
    required int age,
  }) : this(
          // constructora, this() <- call another constructor
          name: name,
          age: age,
          xp: 0,
          level: 1,
          health: 100,
          team: 'blue',
        );

  Player.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson['name'],
        age = playerJson['age'],
        xp = playerJson['xp'],
        level = playerJson['level'],
        health = playerJson['health'],
        team = playerJson['team'];

  // method
  sayHello() {
    print('Hello, my name is $name');
  }
}

//================================================================
// main
//================================================================
void main(List<String> args) {
  // make instance
  var player = Player(
    name: 'jinho',
    age: 25,
    xp: 100,
    level: 1,
    health: 100,
    team: 'red',
  ); // access to member
  print(player.name);
  print(player.xp);
  // player.name = "jinho2"; // final variable cannot be changed

  var player2 = Player(
    name: 'juwon',
    age: 22,
    xp: 200,
    level: 2,
    health: 200,
    team: 'blue',
  );

  var redPlayer = Player.createRedPlayer(
    'redPlayer',
    20,
  );
  print(redPlayer.name);

  var bluePlayer = Player.createBluePlayer(
    name: 'bluePlayer',
    age: 31,
  );
  print(bluePlayer.name);

  var apiData = [
    {
      'name': 'jinho',
      'age': 25,
      'xp': 100,
      'level': 1,
      'health': 100,
      'team': 'red',
    },
    {
      'name': 'juwon',
      'age': 22,
      'xp': 200,
      'level': 2,
      'health': 200,
      'team': 'blue',
    },
    {
      'name': 'rock',
      'age': 30,
      'xp': 300,
      'level': 3,
      'health': 300,
      'team': 'red',
    }
  ];

  apiData.forEach((playerJson) {
    var player = Player.fromJson(playerJson);
  });
}
