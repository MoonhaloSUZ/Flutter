
import 'dart:ffi';

class Player {
  final String name;
  int lv;
  String character;
  
  Player.fromJson(Map<String, dynamic> playerJson) :
    name = playerJson['name'],
    lv = playerJson['lv'],
    character = playerJson['character'];

  void sayHello(){
    print('$name $lv $character');
  }
}


void main(){
  var apiData = [
    {
      'name':'dal',
      'character':'sum',
      'lv': 1612
    },
    {
      'name':'kkyu',
      'character':'gun',
      'lv': 1600
    },
    {
      'name':'suz',
      'character':'gun',
      'lv': 1551
    }

  ];
  apiData.forEach((playerJson) {
    var player = Player.fromJson(playerJson);
    player.sayHello();
   });





  //forEach() 예시

   List<dynamic> lostark = [
    'sum',
    'gun',
    'battle',
    'bar',
    'special',
    1620,
   ];

   lostark.forEach((test) { 
    if (test is int) {
      print(test);
    }

   });
  // 간략화하면 아래와 같다

   //lostark.forEach(print);
  
}