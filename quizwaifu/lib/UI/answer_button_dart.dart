import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {

  final bool _answer;
  final VoidCallback _onTap;

  AnswerButton(this._answer, this._onTap);

  @override
  Widget build(BuildContext context) {
    return  // true button
       new Material(
        color: Colors.white.withOpacity(0.0),
        child: new InkWell(
          onTap: () => _onTap(),
          child: new Center(
              child: new Container(
                decoration: new BoxDecoration(
                    color: _answer == true ? Colors.greenAccent.withOpacity(0.8) : Colors.redAccent.withOpacity(0.6),
                    border: new Border.all(color: Colors.white, width: 5.0)
                ),
                padding: new EdgeInsets.all(20.0),
                child: new Text(_answer == true ? "True" : "False",
                    style: new TextStyle(color: Colors.white, fontSize: 40.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)
                ),
              )
          ),
        ),

    );
  }
}
