import 'package:flutter/material.dart';

class SecondDetail extends StatelessWidget {
  const SecondDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/third');
            },
            child: const Text('세 번째 페이지로 이동하기'),
          ),
        ),
      ),
    );
  }
}
