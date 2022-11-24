import 'package:flutter/material.dart';
// import 'package:hope/home.dart';
import 'Login.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:  Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Text("WELCOME!",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 25,
                fontWeight: FontWeight.w600,
                fontFamily: 'Rocksalt',
              ),
            ),
            Text("How familiar are you with the history of our beloved country, the Philippines and other general knowledges? Confident enough to answer this challenging quiz?",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w300,
                fontSize: 25,
                fontFamily: 'LibreBaskerville'
              ),
            ),

            Container(
              height: MediaQuery.of(context).size.height / 1.7,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://thumbs.dreamstime.com/b/concept-human-resources-banner-presentation-social-media-documents-recruitment-web-page-selection-candidates-vector-135107416.jpg'),
                ),
              ),
            ),

            Column(
              children: <Widget>[
                // the login button
                MaterialButton(
                  minWidth: double.infinity,
                  color: Color(0xFF252c4a),
                  height: 60.0,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>LoginPage()));
                  },
                  //defining the shape
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                    ),
                    borderRadius: BorderRadius.circular(50.0),

                  ),
                  child: Text(
                    "LET'S START!",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}