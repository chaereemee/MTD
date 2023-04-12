import 'dart:convert';

import 'package:http/http.dart' as http; // pub.dev에서 http 패키지 다운
import 'package:toonflix4/models/webtoon_model.dart';

class ApiService {
  // API에 요청을 보낼 클래스
  static const String baseUrl =
      "https://webtoon-crawler.nomadcoders.workers.dev";
  static const String today = "today"; // endpoint

  /*
  코드를 실행하다가 데이터를 기다려야할 때
  async 함수 내에서만 await를 사용 가능
   */
  static Future<List<WebtoonModel>> getTodaysToons() async {
    // Future : 당장 완료될 수 있는 작업이 아님
    List<WebtoonModel> webtoonInstances = [];
    final url = Uri.parse('$baseUrl/$today'); // API URL
    final response = await http.get(url); // API에 HTTP 요청 보냄
    if (response.statusCode == 200) {
      // status가 200이 아닐 경우 에러 발생
      final webtoons = jsonDecode(response.body); // 텍스트로 된 응답 body를 JSON으로 디코딩
      for (var webtoon in webtoons) {
        // API로부터 JSON을 넘겨줌
        final instance = WebtoonModel.fromJson(webtoon);
        webtoonInstances.add(instance);
      }
      return webtoonInstances;
    }
    throw Error();
  }
}
