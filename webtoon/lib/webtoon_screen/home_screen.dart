import 'package:flutter/material.dart';
import 'package:webtoon/model/webtoon_model.dart';
import 'package:webtoon/service/api_service.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  Future<List<WebtoonModel>> webtoons = ApiService.getTodaysToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "오늘의 웹툰",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: FutureBuilder(
        future: webtoons,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const Text('there is data');
          }
          return const Text('loading...');
        },
      ),
      //statefull 위젯을 사용할 필요 없음(await, setstate, isloading등 사용할 필요 x)
      //FutureBuilder : 기다릴 future랑 builder 함수를 받음
      //Builder : context와 snapshot을 받음
      //snapshot : Future의 상태
    );
    //Scaffold : screen을 위한 기본적인 레이아웃과 설정을 제공
  }
}
