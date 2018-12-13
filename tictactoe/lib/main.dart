import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tic Tac Toe',
      home: MyHomePage(title: 'Tic Tac Toe'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String status = "_";
  String player = "Joueur X";
  int turn = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:
      new Container(
        child:
        new Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Text(
                    player,
                    style: new TextStyle(fontSize:12.0,
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.w200,
                    fontFamily: "Roboto"),
              ),
              new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new RaisedButton(
                        child: Text(status),
                        onPressed: () {
                          setState(() {
                            if (turn == 0) {
                              player = "Tour du joueur X";
                              turn = 1;
                            } else {
                              player = "Tour du joueur O";
                              turn = 0;
                            }
                          });
                        },
                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
                    ),

                    new RaisedButton(
                        child: Text(status),
                        onPressed: null,
                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
                    ),
                    new RaisedButton(
                        child: Text(status),
                        onPressed: null,
                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
                    )

                  ]

              ),
              new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new RaisedButton(
                        child: Text(status),
                        onPressed: null,
                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
                    ),

                    new RaisedButton(
                        child: Text(status),
                        onPressed: null,
                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
                    ),
                    new RaisedButton(
                        child: Text(status),
                        onPressed: null,
                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
                    )
                  ]

              ),
              new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new RaisedButton(
                        child: Text(status),
                        onPressed: null,
                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
                    ),

                    new RaisedButton(
                        child: Text(status),
                        onPressed: null,
                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
                    ),
                    new RaisedButton(
                        child: Text(status),
                        onPressed: null,
                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
                    )
                  ]

              )
            ]

        ),

      ),

    );

  }



}
