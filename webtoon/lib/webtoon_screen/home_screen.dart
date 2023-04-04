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
            return Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Expanded(
                  child: makeList(snapshot),
                ),
              ],
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

  ListView makeList(AsyncSnapshot<List<WebtoonModel>> snapshot) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: snapshot.data!.length,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      itemBuilder: (context, index) {
        //itemBuilder : ListView의 Item을 만드는 역할
        print(index);
        var webtoon = snapshot.data![index];
        return Column(
          children: [
            Container(
              width: 300,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    offset: const Offset(10, 10),
                    color: Colors.black.withOpacity(0.3),
                  )
                ],
              ),
              child: Image.network(webtoon.thumb),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              webtoon.title,
              style: const TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        );
      },
      separatorBuilder: (context, index) => const SizedBox(width: 40),
    );
  }
}
