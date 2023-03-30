import 'package:flutter/material.dart';
import 'package:toonflix2/screens/home_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Color(0xFF232855),
          ),
        ),
        cardColor: const Color(0xFFF4EDDB),
        colorScheme: ColorScheme(background: Color(0xFFE7626C)),
      ),
      home: const Scaffold(
        body: Center(),
      ),
    );
  }
}
