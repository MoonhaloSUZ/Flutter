
void main() {
  //key와 value로 만들어진 Map
  //key는 String, value는 Object
  var player = {
    'name' : 'sj',
    'xp' : 7.5,
    'superpower' : false,
  //object자리에 모두 string 형식으로 넣으면 value는 string으로 바뀜
  
  };

  //typescript와 비교했을 때, object는 any와 동일

  Map<int, bool> player2 = {
  //Map 이 아니라 var면 컴파일러에서 스스로 타입을 확인함(위처럼)
    1: true,
    2: false,
    3: true
    
  };
  
  Map<List<int>, bool> player3 = {
    [1,2,3,5] : true,
  };
  //player3. -> 많은 메소드를 확인할 수 있음

  List<Map<String, Object>> play = [
    {
      'name' : 'any',
      'dd' : 123,
      '44' : true
    }
  ];
  //이런 식으로 작업도 가능하지만 가능하다만 참고

  var numbers = {1,2,3,4,5};
  Set<int> numberss = {1,2,3,4,6};
  //set의 아이템은 모두 유니크함
  numbers.add(1);
  numbers.add(2);
  print(numbers);
  print(numberss);
//list랑 같지만 모든 아이템이 유니크함
//모든 아이템이 유니크해야하면 셋, 아니면 리스트 사용
//python에서 tuple과 동일

}