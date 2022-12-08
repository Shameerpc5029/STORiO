import 'package:flutter/material.dart';
import 'package:storio_app/view/introduction%20screen/introduction_screen.dart';

void main(List<String> args) {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const IntroductionScreen(),
    );
  }
}
