import 'package:flutter/material.dart';
import 'sub/homePage.dart';
import 'sub/walkPage.dart';
import 'sub/badgePage.dart';
import 'sub/communityPage.dart';
import 'homeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MOUNTAINDEW',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: const HomeScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: const TabBarView(
            children: <Widget>[
              HomeApp(),
              WalkApp(),
              BadgeApp(),
              CommunityApp()
            ],
          ),
          extendBodyBehindAppBar: true,
          bottomNavigationBar: Container(
            color: Colors.white,
            child: Container(
              height: 70,
              padding: const EdgeInsets.only(bottom: 5, top: 3),
              child: const TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: Colors.green,
                indicatorWeight: 2,
                labelColor: Colors.green,
                unselectedLabelColor: Colors.black87,
                labelStyle: TextStyle(
                  fontSize: 13,
                ),
                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.person,
                    ),
                    text: 'My듀',
                  ),
                  Tab(
                    icon: Icon(Icons.directions_walk),
                    text: '만보기',
                  ),
                  Tab(
                    icon: Icon(
                      Icons.military_tech,
                    ),
                    text: '배지',
                  ),
                  Tab(
                    icon: Icon(
                      Icons.connect_without_contact,
                    ),
                    text: '커뮤니티',
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
