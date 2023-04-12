import 'package:flutter/material.dart';

class CommunityApp extends StatelessWidget {
  const CommunityApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Community', // 커뮤니티
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const CommunityWidget(),
    );
  }
}

class CommunityWidget extends StatefulWidget {
  const CommunityWidget({super.key});

  @override
  State<CommunityWidget> createState() => _CommunityWidgetState();
}

class _CommunityWidgetState extends State<CommunityWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 앱바
      appBar: AppBar(
        title: const Text(
          'DEW COMMUNITY',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true, // DEW COMMUNITY 중앙 정렬
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        // 스크롤뷰
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(
                  30, 20, 30, 0), // 왼쪽, 오른쪽: 30 , 위쪽 : 20
              child: Center(
                child: Column(
                  children: <Widget>[
                    // 공지사항
                    Container(
                      height: 1000,
                      width: 300,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.green,
                          style: BorderStyle.solid,
                          width: 2,
                        ),
                      ),
                      child: const Text('⭐공지사항⭐'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
