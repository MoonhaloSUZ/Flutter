//constructor method 의 이름은 class 이름과 같아아ㅑ 함

class Player {
  // late final String name;
  // late int xp;
  // late String character;
  // //late : 변수 선언은 했지만 값은 나중에 받겠다고 알려주는 것

  // Player(String name, int xp, String character){
  //   this.name = name;
  //   this.xp = xp;
  //   this.character = character;
  // }

  final String name;
  int xp;
  String character;
  //late : 변수 선언은 했지만 값은 나중에 받겠다고 알려주는 것

  Player(this.name, this.xp, this.character);
  // 위 코드를 간략화, 타입 명시 없이 바로 this.변수 사용하여 데이터 받아 올 수 있음

  void sayHello(){
    print('$name $xp $character');
  }
}


void main(){
  var player = Player('dal', 1612, 'sum');
  player.sayHello();
  var player2 = Player('kkyu', 1610, 'gun');
  player2.sayHello();

}