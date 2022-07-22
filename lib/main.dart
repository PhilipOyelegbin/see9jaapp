import 'package:flutter/material.dart';
import 'package:see_9ja_/screens/views/intro.dart';
import 'package:see_9ja_/screens/views/splash.dart';
// import 'package:see_9ja_/views/intro.dart';
// import 'package:see_9ja_/views/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'See_9ja',
      initialRoute: Splash.id,
      routes: {
        Splash.id: (context) => const Splash(),
        Intro.id: (context) => const Intro(),
        //  RegistrationScreen.id: (context) => RegistrationScreen(),
        //LoginScreen.id: (context) => LoginScreen(),
      },
    );
  }
}
