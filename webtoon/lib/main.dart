import 'package:flutter/material.dart';
import 'package:webtoon/widgets/Button.dart';
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
          backgroundColor: const Color(0xFF181818),
          //Colors.색상.얼마나어두운지

          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      //text 우측 정렬
                      children: [
                        const Text(
                          'dal',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'suz',
                          style: TextStyle(
                            color: Colors.white.withOpacity(1),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 120,
                ),
                //command + '.' 사용 시 쉽고빠르게! 리팩토링 가능
                //컨테이너, 패딩, 위젯 등 적용/삭제 모두 가능
                Text(
                  'Total Balance',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  '\$5 194 482',
                  //Dart에서는 텍스트 안에 변수를 넣을 때 $를 사용함
                  //따라서 변수가 아니도록 알려주기 위해 \사용
                  style: TextStyle(
                    fontSize: 44,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Button(
                        //Button()은 const가 아니지만, 값을 지정해서 넣은 밑에 Button(~)은 const임
                        text: 'Transfer',
                        bgColor: Color(0xfff1b33b),
                        textColor: Colors.black),
                    Button(
                        text: 'Request',
                        bgColor: Color(0xff1f2123),
                        textColor: Colors.white),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  //Row는 main과 cross 축이 있다
                  //main은 가로축, cross는 세로축을 의미한다.
                  //column에서는 main이 세로, cross가 가로.

                  children: [
                    const Text(
                      'Wallets',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFF1F2123),
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          const Text(
                            'Won',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: const [
                              Text('7,575'),
                              Text('won'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }

  //material : 구글, cupertino : 애플
}
