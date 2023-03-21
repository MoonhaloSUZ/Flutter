import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(children: [
        Flexible(
          //Flexible : 하드코딩되지 않고 유연하게 UI를 그리게 해줌
          flex: 1,
          child: Container(
            alignment: Alignment.bottomCenter,
            child: Text(
              '25:00',
              style: TextStyle(
                color: Theme.of(context).cardColor,
                fontSize: 89,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: Center(
              child: IconButton(
            //onPressed : 버튼을 눌렀을 때 실행되는 함수
            onPressed: () {},
            iconSize: 123,
            color: Theme.of(context).cardColor,
            icon: const Icon(
              Icons.play_circle_outline,
            ),
          )),
        ),
        Flexible(
          flex: 1,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Pomodors',
                          style: TextStyle(
                            fontSize: 33,
                            color:
                                Theme.of(context).textTheme.displayLarge!.color,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '0',
                          style: TextStyle(
                            fontSize: 67,
                            color:
                                Theme.of(context).textTheme.displayLarge!.color,
                          ),
                        ),
                      ]),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
