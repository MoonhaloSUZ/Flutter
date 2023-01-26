String sayHI({
  String country = 'what',
  int age = 22,
  String name = 'who',
}) {
  return "Hi, $name, $age, and you come from $country";
}
//dart는 null safe기 때문에 required modifier 추가 혹은 기본값 지정

void main() {
  print(sayHI(name: 'sj', age: 55, country: 'kr'));
//pogitionall parameter는 무조건 그 자리에 인입
//위 방식은 지양해야하며, named parameter를 지향
}
