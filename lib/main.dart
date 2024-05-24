//FireBase

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'package:flutter/material.dart';
//import 'package:gymfit/screens/exerciseScreen.dart';
import 'package:gymfit/screens/screenAuthentication.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //FireBase
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
  );

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
