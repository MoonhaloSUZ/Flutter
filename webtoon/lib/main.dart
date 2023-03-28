import 'package:flutter/material.dart';
import 'package:webtoon/service/api_service.dart';
import 'package:webtoon/webtoon_screen/home_screen.dart';

//LifeCycle : initState -> build -> ##위젯이 사라질 땐 dispose가 실행됨

void main() {
  runApp(const App());

  ApiService().getTodaysToons();
}

class App extends StatelessWidget {
  const App({super.key});
  //이 위젯의 key를 statelessWidget이라는 super class 에 보내는 것
  //위젯은 ID같은 식별자 역할을 하는 key가 있다.
  //Flutter가 위젯을 빨리 찾을 수 있도록(식별할 수 있도록) 도와줌.

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
