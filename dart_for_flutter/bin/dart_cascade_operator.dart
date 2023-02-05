
class Player{
  String name;
  int lv;
  String character;

  Player({required this.name, required this.lv, required this.character,});

  void sayLostark() {
    print("lostark $name, $lv, $character");
  }

}

void main() {
  // var dal = Player(name: 'dal', lv: 1620, character: 'sum');
  // dal.name = 'kkyu';
  // dal.lv = 1645;
  // dal.character = 'gun';

  //간략화하면( = cascade operator/cascade notation)

  var dal = Player(name: 'dal', lv: 1620, character: 'sum')
  //var jji = dal
  ..name = 'kkyu'
  ..lv = 1645
  ..character = 'gun';

  dal.sayLostark();

}