
void main() {
  //null safety : 개발자가 null값을 참조할 수 없도록 하는 기능
String? sj = 'SJ'; //
sj = null;

if(sj != null){
  sj.isNotEmpty; 
}
//null safety란 어떤 변수 혹은 데이터가 null이 될 수 있음을 명시
//swift에서도 구경해봤던 것 "변수?" 

//위 조건문을 단축화하면 아래로 작성할 수 있다
sj?.isNotEmpty;
//sj가 낫 널이면 ~ isNotEmpty 속성을 달라 == 위 if 문과 동일

print('not problem');

}