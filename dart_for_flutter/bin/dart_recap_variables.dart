void main() {
    //var 는 가능한 한 많이 사용하는 것이 권장됨

    int num = 5; //class의 property를 사용할 때
    var number = 'num';//지역 변수같은 적은 곳에서
    num = 7;
    number = 'number';
    
    //final : 변경 불가능한 변수
    final test = 123;

    //dynamic : 무슨 type이든 될 수 있으나 조심히 사용해아함
    dynamic name;
    name = '123';
    name = 123;
    name = true;
    if(name is String){
      //name. -> string 관련 메소드들 나옴
    }

    //const : 컴파일할 때 값을 알고있는 변수를 만드는 것(수정 불가))
    //ex) 앱스토어에 앱을 올리기 전에 알고있는 값
    const api_key = '123123';

    //final은 런타임(앱을 실행하면서) 변수를 만들 수 있음
    //ex) username

    //null safety
    String? namesj = 'sj';
    namesj = null;
    //어떤 변수가 null일 수도 있다는 걸 설정하고싶으면 ? 를 이용
    print(namesj?.isEmpty);


    //late : 변수타입 앞에 쓰는 수식어, 변수에 어떤 데이터가 들어올 지 모를 때 사용
    late final String sj;
    sj = '123';
    print(sj);
    //api로 데이터 가져올 때 많이 사용

    
    
}