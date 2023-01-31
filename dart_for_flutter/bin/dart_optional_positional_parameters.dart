String health(String name, int age, [String? country = 'magok']) =>
    'Hello $name, $age, $country';

//null safety 이용, 디폴트 값 지정하여 데이터 인서트되지 않더라도 방어

void main() {
  var results = health('health', 26);
  print(results);
}
