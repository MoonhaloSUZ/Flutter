import 'package:flutter/material.dart';
import 'package:webtoon/model/webtoon_model.dart';
import 'package:webtoon/service/api_service.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final Future<List<WebtoonModel>> webtoons = ApiService.getTodaysToons();

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
            return ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                print(index);
                var webtoon = snapshot.data![index];
                return Text(webtoon.title);
              },
              separatorBuilder: (context, index) => const SizedBox(width: 20),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
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
