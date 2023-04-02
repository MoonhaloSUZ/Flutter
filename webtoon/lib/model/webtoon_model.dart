class WebtoonModel {
  final String title, thumb, id;

  WebtoonModel.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        thumb = json['thumb'],
        id = json['id'];
  //named constructor 이용
  //api_service.dart 에서 api json 값을 받아오고, 여기서 초기화
}
