import 'package:flutter/material.dart';

import '../category.dart';

class tworesult extends StatefulWidget {
  int marks;
  tworesult({Key? key, required this.marks}) : super(key: key);

  @override
  State<tworesult> createState() => _tworesultState();
}

class _tworesultState extends State<tworesult> {

  List<String> images = [
    "assets/images/great.png",
    "assets/images/job.jpeg",
    "assets/images/try.webp"
  ];
  late String message;
  late String image;

  @override
  void initState() {
    if (widget.marks < 30 ) {
      image = images[2];
      message = "You Should Try Harder...\n" + "You scored ${widget.marks} points";
    } else if (widget.marks <60) {
      image = images[1];
      message = "You Can Do Much Better...\n" + "You scored ${widget.marks} points";
    } else {
      image = images[0];
      message = "You Did Very Well!\n" + "You scored ${widget.marks} points";
    }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF252c4a),
        title: Text(
          "Result",
        ),
      ),
      body:  Column(
        children: <Widget>[
          Expanded(
            flex: 6,
            child: Material(
              elevation: 10.0,
              child: Container(
                width: 400.0,
                height: 300.0,
                child:Column(
                  children: <Widget>[
                    Material(
                      child: Container(
                        width: 400.0,
                        height: 350.0,
                        child: ClipRect(
                          child: Image(
                            image: AssetImage(
                              image,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15.0,
                        horizontal: 10.0,
                      ),
                      child: Center(
                        child: Text(
                          message,
                          style: TextStyle(
                            color: Color(0xFF252c4a),
                            fontSize: 35.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                OutlinedButton(
                  onPressed: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context)=> CategoryPage(),
                    ));
                  },
                  child: Text(
                    "Continue",
                    style:  TextStyle(
                      fontSize: 24.0,
                      color: Color(0xFF252c4a),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}