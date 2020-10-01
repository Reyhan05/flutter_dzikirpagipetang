import 'package:flutter/material.dart';
import 'package:flutter_dzikirpagipetang/TampilPetang.dart';

import 'TampilPagi.dart';
import 'TampilPetang.dart';
import 'TampilTentang.dart';

void main()=> runApp(DzikirPagiPetang());

class DzikirPagiPetang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:  false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
        primaryColor: Colors.white,
        canvasColor: Colors.white,
        appBarTheme: AppBarTheme(color: Colors.white, elevation: 3.0)
      ),
      home: MyHomePage(),
    );
  }
 
}
// buat hacktober fest

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(icon: Icon(Icons.info_outline),onPressed: (){
            openNewScreen(context, TampilTentang());
          },),
          SizedBox(width: 20.0,)
        ],
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left:30.0,top: 20.0),
              child: Text("Dzikir",style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.w800)),
            ),
            Padding(
              padding: const EdgeInsets.only(left:30.0, top: 5.0),
              child: Text("Pagi & Petang", style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.w400)),
            ),

            SizedBox(height: 20.0,),

            GestureDetector(
              onTap: (){
                openNewScreen(context, TampilPagi());
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
                height: 250.0,
                child: Stack(
                  children: <Widget>[
                    backgroundImage("https://wallpaperaccess.com/full/1217337.jpg"),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text("Dzikir Pagi", style: teksWaktuDoa,),
                      ),
                    ),
                  ],
                ),
              ),
            ),


            GestureDetector(
              onTap: () {
                openNewScreen(context, TampilPetang());

              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
                height: 250.0,
                child: Stack(
                  children: <Widget>[
                    backgroundImage("https://wallpapercave.com/wp/wp2394248.jpg"),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text("Dzikir Petang", style: teksWaktuDoa,),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  var teksWaktuDoa = TextStyle(
    fontSize: 35.0,
    color: Colors.white,
    fontFamily: 'Raleway',
    fontWeight: FontWeight.bold,

  );


  backgroundImage(String imageURL) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        image: DecorationImage(
          fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken),
            image: NetworkImage(imageURL)

        ),
      ),
    );
  }

    void openNewScreen(BuildContext context, Widget screen){
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));

    }
  }


