//abstract class : 추상화 클래스
//추상화 클래스로는 객체를 생성할 수 없다
//추상화 클래스는 다른 클래스들이 어떤 청사진()을 가지고 있어야 하는지 정의해줌

abstract class Human {
  void walk();
}
//추상화 클래스는 이를 상속받는 모든 클래스가 가지고 있어야 하는 메소드를 정의함
//extends 로 상속받으면 Human 의 메소드인 walk()를 반드시 사용해야함
//메소드 구현은 각 클래스 별로 상이해도 됨


enum XPLevel { beginner, medium, pro }
enum Team { moon, sun }

class Player extends Human{
  String name;
  XPLevel xp;
  Team team;

  Player({
    required this.name,
    required this.xp,
    required this.team,
  });

  void walk(){
    print('run');
  }
}

class EachPlayer extends Human{
  void walk(){
    print('blablabla');
  }
}

void main() {

}