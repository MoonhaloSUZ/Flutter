import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webtoon/webtoon_screen/home_screen.dart';

//LifeCycle : initState -> build -> ##위젯이 사라질 땐 dispose가 실행됨

void main() {
  HttpOverrides.global = MyHttpOverrides();

  runApp(const App());
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..userAgent =
          'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36';
  }
}

class App extends StatelessWidget {
  const App({super.key});
  //이 위젯의 key를 statelessWidget이라는 super class 에 보내는 것
  //위젯은 ID같은 식별자 역할을 하는 key가 있다.
  //Flutter가 위젯을 빨리 찾을 수 있도록(식별할 수 있도록) 도와줌.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
