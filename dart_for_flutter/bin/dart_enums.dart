//enums : 개발자가 실수하지 않도록 도움

enum Team { red, blue }
enum Money { little, soso, many }

class Ex{
  String ame;
  Money money;
  Team team;
  
  Ex({
    required this.ame,
    required this.money,
    required this.team,
  });
  
  void cal(){
    print('coffee is $ame, pay $money');
  }
}


void main() {
  var test = Ex(
    ame: 'ame', 
    money: Money.soso, 
    team: Team.blue
    );
  test.cal();
}