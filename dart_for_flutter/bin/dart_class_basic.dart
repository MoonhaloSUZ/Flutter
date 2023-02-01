class Player {
  String name = 'sujin';
  int xp = 75;
  final String nm = 'sj';

  void sayHello() {
    print("Hi my name is $name"); //this.name 가능하지만 권고하지않음
  }

  //function에서는 type을 명시할 필요 없이 var 사용하였지만,
  //class에서는 반드시 type을 명시하여야 함
}

void main() {
  var player = Player(); //class 앞에 new를 붙여도, 안붙여도 됨
  player.name = 'home';
  print(player.name);
  //위와 같이 바꿀 수 없게 만들고 싶으면 final 사용

  player.sayHello();
}
