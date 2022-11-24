import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hope/WelcomeScreen.dart';

class splashscreen extends StatelessWidget {
  static const String routeName = '/splash';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => splashscreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () => Navigator.push(context, MaterialPageRoute(builder: (_) => WelcomePage())));
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image(
              image: NetworkImage('https://www.linkpicture.com/q/unoss_1.png'),
              width: 400,
              height: 400,
            ),
          ),
          Container(
            child: Text('QUIZ WHIZ',
              style: TextStyle(
                color: Color(0xFF252c4a),
                fontSize: 40,
              fontFamily: 'Rocksalt',
              fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}