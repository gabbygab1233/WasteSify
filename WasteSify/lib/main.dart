import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:WasteSify/Splashscreen.dart';
import 'package:WasteSify/screens/detect_screen.dart';
import 'package:WasteSify/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WasteSify',
      theme: ThemeData(),
      home: SplashScreen(),
    );
  }
}
