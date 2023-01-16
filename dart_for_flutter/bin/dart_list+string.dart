void main() {

  String name = 'sj';
  bool alive = true;
  int y = 5;
  double money = 5.55;

  num x = 12;
  x = 12.1;
  //num 은 integer, double 모두 됨 (부모 클래스))
  //dart가 진정한 객체지향 언어이다 ?!
  

  var giveMeFive = true;

  var numbers = [
    1, 
    2, 
    3, 
    4,
    if(giveMeFive) 5,
    
  ];
  // if(giveMeFive){
  //   numbers.add(5);
  // }

  List<int> numberlist = [1, 2, 3, 4,];

  numberlist.add(1);

  print(numbers);
  //collection if , collection for 을 지원



//String Interpolation
  var dalsuz = 'dal';
  var age = 10;
  var greeting = 'Hello, Im $dalsuz, ${age + 10} nice to meet you';
  print(greeting);
  //변수가 이미 존재할 때 사용



}