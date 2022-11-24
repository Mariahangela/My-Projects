import 'package:flutter/material.dart';

class MealGridTile extends StatelessWidget {
  final String imgscr;
  final String title;

  MealGridTile({required this.imgscr, required this.title});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.network(
          this.imgscr,
          fit: BoxFit.cover,
        ),
        Positioned(
          bottom: 2,
          left: 0,
          child: Container(
            width: MediaQuery.of(context).size.width / 2,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter
                  ,end: Alignment.bottomCenter,
                  colors: [Color(0xFF252c4a).withOpacity(0.30),
                    Color(0xffE4E1DD),]
              ),
            ),
            child: Text(
              this.title,
              style: TextStyle(
                color: Color(0xFF252c4a),
                fontSize: 18,
                fontWeight: FontWeight.w600,
                fontFamily: 'LibreBaskerville',
              ),
            ),
          ),
        ),
      ],
    );
  }
}