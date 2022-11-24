import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:hope/SignupPage.dart';
// import 'package:hope/home.dart';
import 'Signup.dart';
import 'category.dart';
import 'main.dart';


class LoginPage extends StatefulWidget {
  static const String routeName = '/login';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => LoginPage(),
    );
  }

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  bool _isVisible = false;
  bool _isPasswordEightCharacters = false;
  bool _hasPasswordNumber = false;

  onPasswordChanged(String password) {
    final numericRegex = RegExp(r'[0-9]');
    setState(() {
      _isPasswordEightCharacters = false;
      if(password.length >=8)
        _isPasswordEightCharacters = true;

      _hasPasswordNumber = false;
      if(numericRegex.hasMatch(password))
        _hasPasswordNumber = true;

    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF252c4a),
        leading: IconButton(onPressed: () {Navigator.pop(context);
        },
          icon: Icon(Icons.arrow_back_ios,
              size: 20,
              color: Colors.white),

        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:<Widget>[
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:<Widget>[
                Column(
                  children:<Widget>[
                    Text("Login",
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    Text("Login to your account",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),)
                  ],
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Column( children:<Widget> [
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.black)
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          hintText: "Username",
                          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20)
                      ),
                    ),
                    SizedBox( height: 10,),

                    TextField(
                      onChanged: (password) => onPasswordChanged(password),
                      obscureText: !_isVisible,
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _isVisible = !_isVisible;
                              });
                            },
                            icon: _isVisible ? Icon(Icons.visibility, color: Colors.black,) :
                            Icon(Icons.visibility_off, color: Colors.grey,),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.black)
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          hintText: "Password",
                          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20)
                      ),
                    ),
                    SizedBox(height: 5,),
                  ]),
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                      padding: EdgeInsets.only(top: 0,left: 0),
                      decoration:
                      BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border(
                            bottom: BorderSide(color: Color(0xFF252c4a)),
                            top: BorderSide(color: Color(0xFF252c4a)),
                            left: BorderSide(color: Color(0xFF252c4a)),
                            right: BorderSide(color: Color(0xFF252c4a)),
                          )
                      ),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryPage()));
                        },
                        color: Color(0xFF252c4a),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Text(
                          "Login", style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                        ),
                      )
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget>[
                    Text("Don't have an account?"),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(
                                builder: (context) => SignupPage()));
                      },
                      child: Text(" Sign up", style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),),
                    )
                  ],
                ),
                // Container(
                //   padding: EdgeInsets.only(top: 100),
                //   height: 250,
                //     decoration: BoxDecoration(
                //       image: DecorationImage(
                //         image: AssetImage("assets/images/login1.png"),
                //         fit: BoxFit.fitHeight
                //       )
                //     ),
                // )
              ],
            ))
          ],
        ),
      ),
    );
  }
}

Widget inputFile ({label, obscureText = false})
{
  return Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget> [

      Text(label,style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
      ),

      SizedBox(height: 5,),
      TextField(obscureText: obscureText,
        decoration: InputDecoration(contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          enabledBorder: OutlineInputBorder (borderSide: BorderSide(color: Colors.black),),
          border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black),),
        ),
      ),
      SizedBox(height: 10,)
    ],
  );
}