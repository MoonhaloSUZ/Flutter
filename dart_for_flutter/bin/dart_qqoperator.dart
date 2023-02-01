String capital(String? name) {
  if (name != null) {
    return name.toUpperCase();
  }
  return 'ANY';
}

String nocap(String? name) => name != null ? name.toUpperCase() : 'ANY';

String yescap(String? name) => name?.toUpperCase() ?? 'ANY';

void main() {
  //이름을 대문자로 리턴하는 함수
  print(capital('sj'));
  print(capital(null));
  print(nocap('mm'));
  print(yescap('lux'));

  String? sj;
  sj ??= 'sujin'; //sj가 null이면 'sujin' 할당
  sj = null; //이 줄이 없으면 null 이 아니기 때문에 밑에서 에러 발생
  //이미 sujin이라는 값이 들어와서 null이 아니기 때문
  sj ??= 'asdf';
  //위에서 null로 sujin 인입, 다시 null 초기화하여 null이기 대문에 최종적으로 asdf

  print(sj);
}

//?? QQ Operator
//좌항이 null이면 우항을 return
//좌항이 null이 아니면 좌항을 return 

//QQ equals(QQ assignment operator)
//변수 ??= '변수';
//변수가 널이면 '변수' 삽입

