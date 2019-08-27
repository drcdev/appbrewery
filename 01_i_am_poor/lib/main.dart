import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:i_am_poor/counter.dart';

final counter = Counter();

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'I Am Poor',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(title: 'I Am Poor'),
    );
  }
}

class HomePage extends StatelessWidget {
  final String title;

  HomePage({
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text(title),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Observer(
            builder: (_) => Image(
              height: MediaQuery.of(context).size.height / 2,
              image: AssetImage(counter.image),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton.icon(
                icon: Icon(Icons.remove),
                label: Text("Get poorer..."),
                onPressed: () {
                  counter.decrement();
                },
              ),
              FlatButton.icon(
                icon: Icon(Icons.add),
                label: Text("Get richer!"),
                onPressed: () {
                  counter.increment();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
