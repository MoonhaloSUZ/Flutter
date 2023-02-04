
class Player {
  final String name;
  int xp;
  String character;
  //late : 변수 선언은 했지만 값은 나중에 받겠다고 알려주는 것

  Player({
    required this.name, 
    required this.xp, 
    required this.character,
    //default constructor(생성자) 
    });
  // 위 코드를 간략화, 타입 명시 없이 바로 this.변수 사용하여 데이터 받아 올 수 있음

  Player.createBluePlayer({required String name, required int xp}) : 
    this.xp = xp,
    this.name = name,
    this.character = 'blue';
  //':' class 초기화환다고 Dart에게 알려줌(사용자에게 받은 parameter로)

  Player.createRedPlayer(String name, int xp) :
    this.xp = xp,
    this.name = name,
    this.character = 'red';

  void sayHello(){
    print('$name $xp $character');
  }
}


void main(){
  var player = Player.createBluePlayer(
    name: 'dal',
    xp: 1612,
    //','는 코드 포맷팅용
  );
  player.sayHello();
  var redplayer = Player.createRedPlayer(
    'jji',
    1610,
  ); //기본적으로 positional parameter는 required임(*named parameter는 타입 앞에 required를 적어줘야 오류 발생하지 않음)
  redplayer.sayHello();


}