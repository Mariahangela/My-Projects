import 'package:flutter/material.dart';
import 'package:hope/Drawer/MyAccount.dart';
import 'package:hope/Drawer/Setting.dart';
import '../Login.dart';


class MyHeaderDrawer extends StatefulWidget {
  @override
  _MyHeaderDrawerState createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Color(0xFF252c4a),
          width: double.infinity,
          height: 220,
          padding: EdgeInsets.only(top: 45.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 90,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage('https://fiverr-res.cloudinary.com/t_main1,q_auto,f_auto/gigs/192648197/original/da37071aeab174efb5c28270ad720decb5b233ca.jpg'),
                  ),
                ),
              ),
              Text(
                "Maraya Anghela",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "marayaanghela23@gmail.com",
                style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 16,
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.person,
            color: Color(0xFF252c4a),
          ),
          title: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyAccount()));
            },
            child: Text(
              "MyAccount",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.settings, color: Color(0xFF252c4a)),
          title: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Setting()));
            },
            child: Text(
              "Setting",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.feedback, color: Color(0xFF252c4a)),
          title: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => LoginPage()));
            },
            child: Text(
              "Feedback",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.logout, color: Color(0xFF252c4a)),
          title: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => LoginPage()));
            },
            child: Text(
              "Log Out",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ],
    );
  }
}