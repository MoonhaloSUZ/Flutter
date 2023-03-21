import 'package:flutter/material.dart';
//LifeCycle : initState -> build -> ##위젯이 사라질 땐 dispose가 실행됨

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  //const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool showTitle = true;

  void toggleTitle() {
    setState(() {
      showTitle = !showTitle;
    });
  }
  //showTitle 속성을 반대로 토글

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          textTheme: const TextTheme(
            titleLarge: TextStyle(
              color: Colors.red,
            ),
          ),
        ),
        home: Scaffold(
            backgroundColor: Colors.white,
            body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    showTitle
                        ? const MyLargeTitle()
                        : const Text(
                            'Nothing',
                          ),
                    IconButton(
                        onPressed: toggleTitle,
                        icon: const Icon(Icons.remove_red_eye))
                  ]),
            )));
  }
}

class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('init');
    //initState : 상태를 초기화 하기 위한 메서드
  }
  //대부분의 상황에서 필요하지 않음
  //종종 부모요소에 의존하는 데이터를 초기화하는 경우 필요(ex. API)
  //initState는 Build 메서드보다 항상 먼저 호출되어야 함
  //InitState 메서드는 오직 단 한번만 호출됨.
  //super.inist

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("dispose!");
  }
  //form의 리스너로부터 벗어나고싶을때라든지 등
  // 무엇인가를 취소하는 것
  //위젯이 위젯트리에서 제거되기 전에 무언가를 취소하고 싶을 때

  @override
  Widget build(BuildContext context) {
    print('build');
    return Text(
      'My Large Title',
      style: TextStyle(
        fontSize: 30,
        color: Theme.of(context).textTheme.titleLarge?.color,
        //theme의
        //BuildContext 는 위젯 트리에서 위젯의 위치를 제공하고, 이를 통해 상위 요소 데이터에 접근할 수 있음
        //단, 위 코드는 해당 요소가 존재하는지 알 수 없기 때문에(Dart는 null safety 언어)
        //titleLarge? 혹은 titleLarge! 로 알려줘야함
        //( 있거나?   /  무조건 있어요! )
      ),
    );
  }
}
