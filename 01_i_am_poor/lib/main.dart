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
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Observer(
          builder: (_) => Text(counter.title),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Builder(
        builder: (BuildContext context) {
          return Column(
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
                      bool min = counter.decrement();
                      if (min) {
                        SnackBar snackBar = SnackBar(
                          duration: Duration(seconds: 3),
                          content: Center(
                            heightFactor: 1,
                            child: Text("Sorry, you can't get any poorer!"),
                          ),
                        );
                        Scaffold.of(context).showSnackBar(snackBar);
                      }
                    },
                  ),
                  FlatButton.icon(
                    icon: Icon(Icons.add),
                    label: Text("Get richer!"),
                    onPressed: () {
                      bool max = counter.increment();
                      if (max) {
                        SnackBar snackBar = SnackBar(
                          duration: Duration(seconds: 3),
                          content: Center(
                            heightFactor: 1,
                            child: Text("Sorry, you can't get any richer!"),
                          ),
                        );
                        Scaffold.of(context).showSnackBar(snackBar);
                      }
                    },
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
