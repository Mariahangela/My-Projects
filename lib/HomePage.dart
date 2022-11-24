import 'package:flutter/material.dart';
import 'package:hope/screens/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pinoy Quiz",
      theme: ThemeData(
        primaryColor: Color(0xFF252c4a),
      ),
      home: splashscreen(),
    );
  }
}