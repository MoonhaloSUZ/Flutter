import 'dart:async';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int totalSeconds = 1500;
  late Timer timer;
  //사용자가 타이머를 누를 때만 활성화 시키고 싶어서 late
  //late modifer는 해당 property를 당장 초기화하지 않아도 된다는 뜻
  //단, 반드시 사용하기 전에 초기화해야 함.

  void onTick(Timer timer) {
    setState(() {
      totalSeconds -= 1;
    });
  }

  void onStartPressed() {
    timer = Timer.periodic(const Duration(seconds: 1), onTick);
    //onTick() 은 함수를 지금 당장 실행하는 것, 따라서 괄호를 제거하고 작성
  }

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
              '$totalSeconds',
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
            onPressed: onStartPressed,
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
                      borderRadius: BorderRadius.circular(50)),
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
