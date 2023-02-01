void main(List<String> arguments) {
  print('Hello world');
  String name = '수진';
  name = 'sj_test';
  //변수를 선언할 때 var를 사용할 수도 있고
  //넣어줄 데이터의 타입을 사용할 수도 있다.
  //데이터의 타입만 유지시키면 업데이트 가능

  //dynamic - 선언할 때 변수를 지정하지 않으면 다이나믹(원하는거 뭐든지)으로 됨
  //이상적으로는 안쓰는 게 좋음

  dynamic dynamictest;
  dynamictest = 'sj';
  dynamictest = 12;
  dynamictest = true;
  if (dynamictest is String) {
    //dynamic이지만 이 조건문에서는 String으로 인식
  }

  if (dynamictest is int) {
    //dynamictest.isEven
  }
}
