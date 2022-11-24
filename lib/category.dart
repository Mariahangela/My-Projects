import 'package:flutter/material.dart';
import 'package:hope/around/around.dart';
import 'package:hope/main.dart';
import 'package:hope/other/other.dart';
import 'package:hope/plus/plus.dart';
import 'package:hope/tres/tres.dart';
import 'package:hope/universe/universequestions.dart';
import 'Drawer/drawer.dart';
import 'cuatro/cuatro.dart';
import 'doss/doss.dart';
import 'mealgridtile.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QUIZ WHIZ",
        style: TextStyle(
          fontFamily: 'RockSalt',
          fontWeight: FontWeight.bold,
          fontSize: 23,
        ),
        ),
        backgroundColor: Color(0xFF252c4a),
      ),
      backgroundColor: Color(0xFF252c4a),
      body:Column(

          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
       Container(
       padding: EdgeInsets.fromLTRB(30, 10, 30, 2),
       child: Text(
       'YOU MAY CHOOSE ANY CATEGORY',
       style: TextStyle(
       fontSize: 18,
       fontWeight: FontWeight.bold,
       color: Colors.grey,
         fontFamily: 'LibreBaskerville',
       ),
       ),
         alignment: Alignment.center,
       ),
      Expanded(
        child: GridView.count(
          padding: EdgeInsets.all(10),
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio:(MediaQuery.of(context).size.width / 3/200),
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                },
              child: MealGridTile(imgscr:
              'https://i.pinimg.com/originals/7a/4e/d5/7a4ed5bd67c1ff2b4d340841d812fe76.jpg',
                title:'HISTORY',
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>dossquestion()));
              },
              child: MealGridTile(imgscr:
              'https://res.cloudinary.com/teepublic/image/private/s--dy5fKV5o--/c_crop,x_10,y_10/c_fit,w_830/c_crop,g_north_west,h_1038,w_1038,x_-104,y_-175/l_upload:v1565806151:production:blanks:vdbwo35fw6qtflw9kezw/fl_layer_apply,g_north_west,x_-215,y_-286/b_rgb:262c3a/c_limit,f_jpg,h_630,q_90,w_630/v1570176334/production/designs/6200544_0.jpg',
                title:'GUESS WHO?',
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>tresquestions()));
              },
              child: MealGridTile(imgscr:
              'https://img.freepik.com/premium-vector/isometric-round-map-philippines-point-marker-with-flag-philippines-cloud-sun-background_292608-18677.jpg?w=2000',
                title:'GEOGRAPHY',
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>cuatroquestions()));
              },
              child: MealGridTile(imgscr:
              'https://thumbs.dreamstime.com/b/did-you-know-icon-comic-style-question-mark-cartoon-vector-illustration-white-isolated-background-attention-banner-splash-216871681.jpg',
                title:'DID YOU KNOW?',
              ),
            ),
            GestureDetector(
              onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>around()));
              },
            child: MealGridTile(imgscr:
            'https://png.pngtree.com/png-clipart/20201128/ourlarge/pngtree-travel-around-the-world-png-image_2440841.jpg',
              title:'AROUND THE WORLD',
            )),
            GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>plusquestions()));
                },
                child: MealGridTile(imgscr:
                'https://media.istockphoto.com/id/469890357/vector/spelling-bee.jpg?s=1024x1024&w=is&k=20&c=IcC8-ggqzI9WkOLKorMgUIkTMI_M_InWI6waMHwBFcQ=',
                  title:'SPELL THE WORD',
                )),
            GestureDetector(
              onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>other()));
                 },
            child: MealGridTile(imgscr:
            'https://thumbs.dreamstime.com/z/left-right-brain-concept-functions-infographic-symbolic-depiction-side-logic-science-mathematics-arts-creativity-vector-135069013.jpg',
              title:'RIDDLES AND LOGICS',
            )),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>universequestions()));
                },
              child: MealGridTile(imgscr:
              'https://png.pngtree.com/png-clipart/20210330/ourlarge/pngtree-purple-planet-weightless-astronaut-png-image_3165014.jpg',
                title:'THE UNIVERSE',
              )),
          ],
        ),
      )],
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
              ],
            ),
          ),
        ),
      ),
    );
  }}
