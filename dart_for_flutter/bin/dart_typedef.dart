typedef ListOfInts = List<int>;
//List<int>를 쓰는 대신 ListOfInts라고 쓸 수 있음(리눅스의 alias와 유사)

//숫자를 list 로 받아서 반대로 뒤집어서 return 하는 function
ListOfInts reverseListOfNumber(ListOfInts list) {
  var reversed = list.reversed;
  return reversed.toList();
}

typedef UserInfo = Map<String, String>;
//가능하지만, 구조화된 data의 형태를 지정하고 싶다면 class를 만들어야 함
//typedef은 Map, Set 에서도 모두 가능

String sayHi(Map<String, String> userInfo) {
  return "묭 ${userInfo['name']}";
}

void main() {
  //자료형이 헷갈릴 때 alias 만드는 법
  print(reverseListOfNumber([5, 7, 9]));

  print(sayHi({"묭": 'sj'}));
}
