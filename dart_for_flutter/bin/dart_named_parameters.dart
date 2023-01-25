String sayHello({String name = 'sj', int age = 12, String country = 'lg'}) {
  return "Hello $name, you are $age, and you come from $country";
}

void main() {
  print(sayHello('sj', 26, 'Korea'));
  //named argument를 사용하면

  print(sayHello(
    age: 5,
    country: 'new',
    name: 'sj',
  )); //함수의 인자에 중괄호해야 오류발생하지 않고 제대로 작동
  //위 경우 유저가 모든 인자값을 넣지 않을 경우를 대비
  //1. argument에 defalt 값 지정
  //ex. String name = '123', int age = 99, String country = '123'
}
