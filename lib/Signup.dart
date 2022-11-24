import 'package:flutter/material.dart';
// import 'package:hope/LoginPage.dart';
import 'package:hope/main.dart';
import 'Login.dart';
// import 'home.dart';

class SignupPage extends StatefulWidget {
  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Color(0xFF252c4a),
        leading: IconButton(
          onPressed: () {Navigator.pop(context);
          },

          icon: Icon(Icons.arrow_back_ios,
            size: 20,
            color: Colors.white,),

        ),
      ),

      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height - 50,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text("Sign up",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),),

                  SizedBox(height: 20,),
                  Text("Let's Create an account.",
                    style: TextStyle(
                      fontSize: 15,
                      color:Colors.black87,
                      fontWeight: FontWeight.bold,
                    ),)


                ],
              ),
              Column(
                children: <Widget>[
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
                  SizedBox(height: 10),
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
                        hintText: "Email",
                        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20)
                    ),
                  ),
                  SizedBox(height: 10),
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
                        hintText: "Confirm Password",
                        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20)
                    ),
                  ),
                  SizedBox(height: 5,),
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 3, left: 3),
                decoration:
                BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border(
                      bottom: BorderSide(color: Colors.black),
                      top: BorderSide(color: Colors.black),
                      left: BorderSide(color: Colors.black),
                      right: BorderSide(color: Colors.black),



                    )

                ),
                child: MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                  },
                  color:Color(0xFF252c4a),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),

                  ),
                  child: GestureDetector(onTap: (){
                  },
                    child: Text(
                      "Sign up", style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.white,

                    ),
                    ),
                  ),

                ),



              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Already have an account?"),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                    },
                    child: Text(" Login", style:TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


Widget inputFile({label, obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.black87
        ),

      ),
      SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0,
              horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFF252c4a),
            ),

          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF252c4a)),
          ),
        ),
      ),
      SizedBox(height: 10,)
    ],
  );
}