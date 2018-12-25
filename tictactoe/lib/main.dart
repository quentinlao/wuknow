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
  static int n = 3;
  var game = new List.generate(n, (_) => new List(n));

  @override
  void initState(){
    for(int i = 0; i < game.length; i++){
      for(int j = 0; j < game.length; j++){
        game[i][j] = "_";
      }
    }
    super.initState();
  }
  Function _disableButton(int i, int j){
    if (game[i][j] != "_") {
      return null;
    } else {
      return () {
        setState(() {
          if (turn == 0) {
            player = "Tour du joueur X";
            game[i][j] = "X";
            turn = 1;
          } else {
            player = "Tour du joueur O";
            game[i][j] = "O";
            turn = 0;
          }
        });
      };
    }
  }
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
                        child: Text(game[0][0]),
                        onPressed: _disableButton(0,0),
                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
                    ),

                    new RaisedButton(
                        child: Text(game[1][0]),
                        onPressed: _disableButton(1,0),
                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
                    ),
                    new RaisedButton(
                        child: Text(game[2][0]),
                        onPressed: _disableButton(2,0),
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
                        child: Text(game[0][1]),
                        onPressed: _disableButton(0,1),
                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
                    ),

                    new RaisedButton(
                        child: Text(game[1][1]),
                        onPressed: _disableButton(1,1),
                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
                    ),
                    new RaisedButton(
                        child: Text(game[2][1]),
                        onPressed: _disableButton(2,1),
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
                        child: Text(game[0][2]),
                        onPressed: _disableButton(0,2),
                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
                    ),

                    new RaisedButton(
                        child: Text(game[1][2]),
                        onPressed: _disableButton(1,2),
                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
                    ),
                    new RaisedButton(
                        child: Text(game[2][2]),
                        onPressed: _disableButton(2,2),
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
