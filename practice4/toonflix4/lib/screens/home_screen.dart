import 'package:flutter/material.dart';
import 'package:toonflix4/models/webtoon_model.dart';
import 'package:toonflix4/services/api_service.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  Future<List<WebtoonModel>> webtoons = ApiService.getTodaysToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2, // AppBar 음영
        foregroundColor: Colors.green, // AppBar 텍스트 색
        backgroundColor: Colors.white, // AppBar 색
        title: const Center(
          child: Text(
            '오늘의 웹툰',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
      body: FutureBuilder(
        future: webtoons,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const Text("There is data!");
          }
          return const Text('Loading....');
        },
      ),
    );
  }
}
