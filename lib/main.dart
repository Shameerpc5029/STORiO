import 'package:flutter/material.dart';
import 'package:storio_app/view/introduction/introduction_screen.dart';

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
      theme: ThemeData(
          appBarTheme: AppBarTheme(
        elevation: 0,
        color: Colors.blue.shade600,
      )),
      home: const IntroductionScreen(),
    );
  }
}
