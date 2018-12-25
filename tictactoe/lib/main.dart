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
  String status = " ";
  String player = "Joueur X";
  int turn = 0;
  String winner = " ";
  bool noWin = false;
  static int n = 3;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  var game = new List.generate(n, (_) => new List(n));

  @override
  void initState(){
    for(int i = 0; i < game.length; i++){
      for(int j = 0; j < game.length; j++){
        game[i][j] = " ";
      }
    }
    super.initState();
  }
  Function _disableButton(int i, int j){
    if (game[i][j] != " ") {
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
          checkStat();
          if (winner != " ") {
            _scaffoldKey.currentState.showSnackBar(new SnackBar(content: new Text("Player " + winner + " win, Game restart")));
            for(int i = 0; i < game.length; i++){
              for(int j = 0; j < game.length; j++){
                game[i][j] = " ";
              }
            }
            winner = " ";
          } else if(noWin == true){
            _scaffoldKey.currentState.showSnackBar(new SnackBar(content: new Text("No winner, game restart")));
            for(int i = 0; i < game.length; i++){
              for(int j = 0; j < game.length; j++){
                game[i][j] = " ";
              }
            }
            noWin= false;

          }

        });
      };
    }
  }

  void checkStat(){
    int count = 0;
    for(int i = 0; i < game.length; i++){
      for(int j = 0; j < game.length; j++){
        if(game[i][j]!=" "){
          count++;
        }
      }
    }
    if(count == 9)
      {
        noWin = true;
        return;
      }
    for(int i = 0; i < game.length; i++)
    {
      String win = checkRow(i);
      if(win != " " || (win = checkColumn(i)) != " ")
      {
        winner = win;
        return;
      }
    }
    //Check diagonal top left to bottom right
    if(game[0][0] != " ")
    {
      if(game[0][0] == game[1][1] &&
          game[1][1] == game[2][2])
      {
        winner = game[0][0];
      }
    }
    //Check diagonal top right to bottom left
    else if(game[0][2] != " ")
    {
      if(game[0][2] == game[1][1] &&
          game[1][1] == game[2][0])
      {
        winner = game[0][2];
      }
    }

  }
  String checkRow(int row)
  {
    if(game[row][0] == " ")
    {
      return " ";
    }
    if(game[row][0] == game[row][1] &&
        game[row][1] == game[row][2])
    {
      return game[row][0];
    }
    return " ";
  }

  String checkColumn(int column)
  {
    if(game[0][column] == " ")
    {
      return " ";
    }
    if(game[0][column] == game[1][column] &&
        game[1][column] == game[2][column])
    {
      return game[column][0];
    }
    return " ";
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
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
