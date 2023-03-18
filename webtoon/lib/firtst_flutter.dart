import 'package:flutter/material.dart';
//runApp 호출 가능
//void 함수인데 Widget이 필요
//Widget은 class와 유사

class Player {
  String name;

  Player({required this.name});
}

void main() {
  var dal = Player(
    name: 'dal',
  );
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

//StatelessWidget을 상속받음으로써 Widget이 됨
//StatelessWidget.build 메소드를 반드시 사용하여야 함 -> build 메소드 : Widget의 UI를 만드는 것

  @override
//@overide : 부모 class에 이미 있는 메소드를 override 함
  Widget build(BuildContext context) {
    return MaterialApp(
      //구글 형식의 material app일지 애플 형식의 cupertino app일지 정해야함. 구글에서 만든 언어로 material 이 더 고오급. 사용.
      home: Scaffold(
        //Home 안에 다른 위젯을 생성
        appBar: AppBar(
          centerTitle: false,
          elevation: 100,
          title: const Text('Hi, Flutter'),
        ),
        body: const Center(
          child: Text('Hi, Dal'),
        ),
      ),
    );
  }

  //material : 구글, cupertino : 애플
}
