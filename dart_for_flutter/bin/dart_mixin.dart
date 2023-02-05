//mixin : 생성자가 없는 클래스를 의미

//클래스에 속성을 추가하거나 할 때 사용


class Strong {
  final double strengthLv = 1612.45;
}

class QuickRunner {
  void runQiuck(){
    print('ruuuuun');
  }
}

class Tall{
  final double height = 2.00;
}
//다른 클래스의 속성을 가져옴(상속x)
class Player with Strong, QuickRunner, Tall {

}

class Horse with Strong, Tall{

}

class Kid with QuickRunner{

}

void main() {
  var player = Player();
  player.strengthLv;

}

//extend 하면 확장한 클래스는 부모 클래스가 되고, 자식 클래스느 부모 클래스를 super로 접근 가능
//그 순간 부모 클래스의 인스턴스가 됨

//mixin은 with로 프로퍼티와 메소드를 가져올 수 있음(just take)
//생성자가 없는 클래스면 됨.
