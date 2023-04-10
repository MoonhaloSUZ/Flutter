import 'package:flutter/material.dart';
import 'package:webtoon/screen/detail_screen.dart';

//ListView.Separated / 컴포넌트, 위젯 분리
class Webtoon extends StatelessWidget {
  const Webtoon({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,
  });

  final String title, thumb, id;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              title: title,
              thumb: thumb,
              id: id,
            ),
            fullscreenDialog: false,
          ),
        );
        //Navigator.push(context, route) -> route : DetailScreen같은 StatelessWidget을 애니메이션 효과로 감싸서 스크린처럼 보이게 함
        //사실은 다른 StatelessWidget을 렌더링 한 것
        //

        //MaterialPageRoute(builder: builder) : 이 친구는, Stateless Widget을 route로 감싸서 다른 스크린처럼 보이게 해줌
      },
      child: Column(
        children: [
          Hero(
            //Hero : 두 화면 사이에 애니메이션을 주는 위젯
            tag: id,
            child: Container(
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
              child: Image.network(thumb),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
