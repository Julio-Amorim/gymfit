import 'package:flutter/material.dart';
//import 'package:gymfit/screens/exerciseScreen.dart';
import 'package:gymfit/screens/screenAuthentication.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenAuthentication(),
    );
  }
}
