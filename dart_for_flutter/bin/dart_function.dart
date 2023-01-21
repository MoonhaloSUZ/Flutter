void sayHello(String name){
  print("Hello $name nice to meet you");
  // return 'hello'; -> 에러 발생

}
//void : 아무것도 리턴하지 않음을 의미, 단지 콘솔에 출력
//string을 return 하고싶으면 void가 아니라 String으로 수정해야 함

//궁금 : 영상 Defining a Function (3 0) 의 1:45초 글자 수정 어떻게 하는지 궁금함

void main() {
  sayHello('sj');

  print(sayHi('sjsj'));

  print(plus(5, 7));

}

//한줄짜리 함수일 경우 fat arrow syntax 사용 가능
//ex.
String sayHi(String hi)=> "Hi $hi";

num plus(num a, num b)=> a + b;
//왜 출력되지 않지..?