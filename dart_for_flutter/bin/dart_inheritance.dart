

class Human {
  final String name;

  Human({
    required this.name
    });

  void sayHi(){
    print("Hi, $name");
    }
}

enum Team { blue, red }

class Player extends Human{
  final Team team;

  Player({
    required this.team,
    required String name,
  }) : super(name: name); //super로 부모 클래스와 소통

  @override
  void sayHi(){
    super.sayHi();
    print('this is super.sayHi() method');
  }
}


void main(){
  var user = Player(team: Team.red, name: 'dal');
  user.sayHi();

}