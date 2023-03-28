import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = 'https://webtoon-crawler.nomadcoders.workers.dev';
  final String today = 'today';

  void getTodaysToons() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      print(response.body);
    }
    throw Error();

    //Future : 미래에 받을 값의 타입을 알려줌
    //getTodaysToons() 함수를 호출하면, dart는 api가 응답할 때까지 기달림 == 비동기
    //서버가 응답할 때까지 프로그램이 기다리는 것
    //Dart한테 http.get(url);이 끝날 때 알려달라고 해야됨(실행하고 마무리할때까지 기다리라고하는것)
    //요청의 결과값이 중요하기때문에 기다리라고 하는 것!! --> await 이용
    //await는 비동기함수 내에서만 사용 할 수 있기 때문에 함수 옆에 async 명시해야함.
    //Future 같은 타입에 await을 사용.

    //Future<Response> --> 완료가 되었을 때 Response라는 타입을 반환할 것이라고 알려주는 것

    //Future타입은 get함수는 미래에 완료될 것이라는 걸 알 수 있음(바로 처리x)

    //완료됐을 때, response를 반환할 것이라는 걸 알 수 있음
  }
}
