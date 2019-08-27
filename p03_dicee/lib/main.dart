import 'package:dicee/dice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

void main() => runApp(App());

final dice = Dice();

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () => dice.rollAll(),
                child: Observer(
                  builder: (_) => Image.asset(
                    "images/dice${dice.die1}.png",
                  ),
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () => dice.rollAll(),
                child: Observer(
                  builder: (_) => Image.asset(
                    "images/dice${dice.die2}.png",
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
