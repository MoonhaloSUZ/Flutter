import 'package:test/test.dart';

String capital(String? name) {
  if (name != null) {
    return name.toUpperCase();
  }
  return 'ANY';
}

String nocap(String? name) => name != null ? name.toLowerCase() : 'ANY';

String yescap(String? name) => name.toUpperCase() ?? 'ANY';

void main() {
  //이름을 대문자로 리턴하는 함수
  capital('sj');
  capital(null);
}
