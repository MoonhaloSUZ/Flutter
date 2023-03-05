import 'dart:ffi';

import 'package:flutter/material.dart';
//runApp 호출 가능
//void 함수인데 Widget이 필요
//Widget은 class와 유사

class Player {
  String name;

  Player({required this.name});
}

void main() {
  var dal = Player(name: 'dal',
  );
  runApp(App());
  
}

class App extends StatelessWidget{ 
//StatelessWidget을 상속받음으로써 Widget이 됨
//StatelessWidget.build 메소드를 반드시 사용하여야 함 -> build 메소드 : Widget의 UI를 만드는 것

  @override 
//@overide : 부모 class에 이미 있는 메소드를 override 함
  Widget build(BuildContext context) {
    return MaterialApp( //구글 형식의 material app일지 애플 형식의 cupertino app일지 정해야함. 구글에서 만든 언어로 material 이 더 고오급. 사용.
      home: Scaffold( //Home 안에 다른 위젯을 생성
        backgroundColor: Color(0xFF181818),
        //Colors.색상.얼마나어두운지 
        

        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18 ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  //text 우측 정렬
                  children: [
                    Text('dal',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('suz',
                      style: TextStyle(
                        color: Colors.white.withOpacity(1),
                        fontSize: 18,
                        ),
                      ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 120,
            ),
            Text(
              'Total Balance',
              style: TextStyle(
                fontSize: 22,
                color: Colors.white.withOpacity(0.8),
              ),
              ),
              SizedBox(
                height: 10,
                ),
              Text(
              '\$5 194 482',
              //Dart에서는 텍스트 안에 변수를 넣을 때 $를 사용함
              //따라서 변수가 아니도록 알려주기 위해 \사용
              style: TextStyle(
                fontSize: 44,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
              ),
              SizedBox(
                height: 30,
                ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(45),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 20, 
                        horizontal: 50
                      ),
                      child: Text('Transfer',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),

                  )
                ],
                )
          ],
        ),
        )
      ),
    );
  }

  //material : 구글, cupertino : 애플
  
}