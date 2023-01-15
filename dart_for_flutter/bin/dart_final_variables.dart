void main() {

  final name = 'sj';
  //final 변수는 수정이 불가능함
  //javascript의 const와 동일

  //final String name = 'sj'; 도 가능하지만,
  //컴파일러에서 자동으로 타입 확인해서 정함
  
  late final String test;
  //late는 데이터 없이 변수 생성 가능, 추후에 데이터 insert 가능
  //api 작업 시 종종 사용함
  //ex) 변수 생성, api 호출, 호출된 값 삽입

  //print(test); -> 데이터 할당이 안 돼서 에러 발생

  test = 'sj';
  print(test);

  const name2 = 'shoot';
    //final과 작동은 유사하지만
    //compile-time이 알고있는 값이어야 함(컴파일 할 때!)
    //외부에서 끌어오는 값은 final로, 컴파일 할 때 알 수 있는 값이면 const

  print(name2);

}