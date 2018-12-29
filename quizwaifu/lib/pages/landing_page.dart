import 'package:flutter/material.dart';
import './quiz_page.dart';
class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/images/home.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          new InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new QuizPage())),
            child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Center(
                    child:new Text("Quiz waifu",style: new TextStyle(color: Colors.white, fontSize: 50.0, fontWeight: FontWeight.bold),),
                  ),
                  new Text("Start", style: new TextStyle(color: Colors.greenAccent, fontSize: 40.0, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
                ]
            ),
          ),
        ]
      )
    );

  }
}