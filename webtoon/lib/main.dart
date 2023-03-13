import 'package:flutter/material.dart';

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
                  children: const [
                    MyLargeTitle(),
                  ]),
            )));
  }
}

class MyLargeTitle extends StatelessWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
