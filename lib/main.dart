import 'package:flutter/material.dart';
import 'package:hope/data/questions_list.dart';
import 'package:hope/data/resulttwo.dart';
import 'package:hope/screens/result_screen.dart';
import 'package:hope/screens/splash.dart';
import 'Drawer/drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:splashscreen(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Color mainColor = Colors.white;
  Color secondColor = Color(0xFF252c4a);
  PageController? controller = PageController(initialPage: 0);
  bool isPressed = false;
  Color isTrue = Colors.green;
  Color isWrong = Colors.red;
  Color btnColor = Color(0xFF252c4a);
  int score = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Padding(
          padding: EdgeInsets.all(18.0),
        child: PageView.builder(
          physics: const NeverScrollableScrollPhysics(),

          controller: controller!,
          onPageChanged: (page){
            setState(() {
              isPressed = false;
            });
          },
          itemCount: questions.length,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Questions ${index + 1} / ${questions.length}",
                  style: TextStyle(
                    color: Color(0xFF252c4a),
                    fontWeight: FontWeight.w300,
                    fontSize: 32.0,
                  ),
                  ),
                ),
                const Divider(
                  color: Color(0xFF252c4a),
                  height: 8.0,
                  thickness: 1.0,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(questions[index].question!,
                style: const TextStyle(
                  color: Color(0xFF252c4a),
                  fontSize: 23.0,
                ),
                ),
                SizedBox(height: 40.0),
                for (int i = 0; i < questions[index].answer!.length; i++)
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 25.0),
                    child: MaterialButton(
                      shape: StadiumBorder(),
                      color: isPressed ?
                      questions[index].answer!.entries.toList()[i].value
                      ? isTrue
                      : isWrong
                      : secondColor,
                      padding: EdgeInsets.symmetric(vertical: 25.0),
                      onPressed: isPressed
                         ? () {}
                         :() {
                          setState(() {
                          isPressed = true;
                          });
                          if (questions[index]
                          .answer!
                          .entries
                          .toList()[i]
                          .value){
                           score+=1;
                           print(score);
                         }
                       },
                      child: Text(questions[index].answer!.keys.toList()[i],
                      style: TextStyle(
                          color: Colors.white,
                        fontSize:15.0,
                      ),
                     ),
                    ),
                  ),
                SizedBox(
                  height: 60.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    OutlinedButton(

                      onPressed: isPressed
                          ?  index + 1 == questions.length
                            ? () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => tworesult(marks: score)));
                      }
                            :() {
                               controller!.nextPage(
                               duration: Duration(microseconds: 500),
                               curve: Curves.linear);
                               setState(() {
                                 isPressed = false;
                               });
                              }
                          : null,
                      style: OutlinedButton.styleFrom(
                         shape: StadiumBorder (),
                        side: BorderSide(color: Color(0xFF252c4a), width: 2.0),
                        ),

                        child: Text (
                          index + 1 == questions.length
                          ? "See Result"
                          : "Next Question",
                        style: TextStyle(
                          color: Color(0xFF252c4a),
                          ),
                        ),
                    ),
                  ],
                ),
                ],
            );
            },
      ),
      ),
    );
  }
}



