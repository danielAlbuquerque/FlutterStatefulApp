import 'package:flutter/material.dart';

class MakeItRain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new MakeItRainState();
}

class MakeItRainState extends State<MakeItRain> {

  int _moneyCounter = 0;

  void _rainMoney({bool increment = true}) {
    setState(() {
      if (increment) {
        _moneyCounter += 132;
      } else {
        _moneyCounter -= 132;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("Make it rain!"),
          backgroundColor: Colors.lightGreen,
        ),
        body: new Container(
          padding: EdgeInsets.only(top: 10.0),
          child: new Column(
            children: <Widget>[
              new Center(
                child: new Text(
                  "Get Rich!",
                  style: new TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 29.9),
                ),
              ),
              new Expanded(
                child: new Center(
                  child: new Text(
                    '\$$_moneyCounter',
                    style: new TextStyle(
                        color: _moneyCounter > 2000 ? Colors.blueAccent : Colors.red,
                        fontSize: 46.9,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              new Expanded(
                  child: new Center(
                      child: new FlatButton(
                        color: Colors.lightGreen,
                        textColor: Colors.white70,
                        onPressed: () => _rainMoney(),
                        child: new Text("Let it rain", style: new TextStyle(fontSize: 19.9,),),
              ),
                  )),
              new Expanded(
                  child: new Center(
                      child: new FlatButton(
                        color: Colors.lightGreen,
                        textColor: Colors.white70,
                        onPressed: () => _rainMoney(increment: false),
                        child: new Text("Let it rain back", style: new TextStyle(fontSize: 19.9,),),
                      )))
            ],
          ),
        ));
  }
}
