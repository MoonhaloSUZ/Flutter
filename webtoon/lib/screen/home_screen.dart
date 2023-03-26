import 'dart:async';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const tF = 1500;
  int totalSeconds = tF;
  late Timer timer;
  //사용자가 타이머를 누를 때만 활성화 시키고 싶어서 late
  //late modifer는 해당 property를 당장 초기화하지 않아도 된다는 뜻
  //단, 반드시 사용하기 전에 초기화해야 함.

  bool isRunning = false;

  int totalPomodoros = 0;

  void onTick(Timer timer) {
    if (totalSeconds == 0) {
      setState(() {
        isRunning = false;
        totalSeconds = tF;
        totalPomodoros += 1;
      });
      timer.cancel();
    } else {
      setState(() {
        totalSeconds -= 1;
      });
    }
  }

  void onStartPressed() {
    timer = Timer.periodic(const Duration(seconds: 1), onTick);
    //onTick() 은 함수를 지금 당장 실행하는 것, 따라서 괄호를 제거하고 작성
    setState(() {
      isRunning = true;
    });
  }

  void onPausePressed() {
    timer.cancel();

    setState(() {
      isRunning = false;
    });
  }

  void resetTimer() {
    timer.cancel();

    setState(() {
      isRunning = false;
      totalSeconds = tF;
    });
  }

  String format(int seconds) {
    var duration = Duration(seconds: seconds);
    print(duration.toString().split(".").first.substring(2, 6));
    //Duration(seconds: seconds) -> ex) 0:25:00.000000 -> 25:00으로 분리하고싶음
    //duration(변수)를 스트링으로 바꾼 뒤 split "."기준으로 실행 -> 0:25:00 과 000000 가 분리되어 list에 저장됨
    //-> .first를 해서 첫번째 아이템만 가져옴
    //substring(start, end) -> start 부터 end 까지 해당하는 인덱스 스트링 컷팅
    //인덱스는 2~6 이지만 마지막 인덱스 +1 해서 커트해야 마지막 인덱스까지 표시 됨

    return duration.toString().split(".").first.substring(2, 7);
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
              format(totalSeconds),
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  //onPressed : 버튼을 눌렀을 때 실행되는 함수
                  onPressed: isRunning ? onPausePressed : onStartPressed,
                  iconSize: 123,
                  color: Theme.of(context).cardColor,
                  icon: Icon(
                    isRunning
                        ? Icons.pause_circle_outline
                        : Icons.play_circle_outline,
                  ),
                ),
                OutlinedButton(
                  onPressed: resetTimer,
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: Theme.of(context).cardColor,
                      width: 2,
                    ),
                  ),
                  child: Text(
                    'reset',
                    style: TextStyle(
                      fontSize: 23,
                      color: Theme.of(context).cardColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
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
                          'Pomodoros',
                          style: TextStyle(
                            fontSize: 33,
                            color:
                                Theme.of(context).textTheme.displayLarge!.color,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '$totalPomodoros',
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
