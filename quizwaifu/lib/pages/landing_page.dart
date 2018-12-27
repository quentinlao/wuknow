import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              color: const Color(0xff7c94b6),
              image: new DecorationImage(
                colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.dstATop),
                image: new AssetImage("assets/images/home.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Center(
                    child:new Text("Quiz Waifu",style: new TextStyle(color: Colors.white, fontSize: 50.0, fontWeight: FontWeight.bold),),
                ),
                new Text("Choose your waifu", style: new TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),),
              ]
          ),
        ]
      )
    );

  }
}