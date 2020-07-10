import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:p06_bmi/bmi_widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return BMIInputPage();
  }
}

class BMIInputPage extends StatefulWidget {
  @override
  _BMIInputPageState createState() => _BMIInputPageState();
}

enum Gender { Male, Female }

class _BMIInputPageState extends State<BMIInputPage> {
  bool isMale = false;
  bool isFemale = false;

  void toggleGender(Gender gender) {
    if (gender == Gender.Male) {
      setState(() {
        isMale = !isMale;
        isFemale = false;
      });
    } else if (gender == Gender.Female) {
      setState(() {
        isFemale = !isFemale;
        isMale = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("BMI Calculator"),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: BMICard(
                    onTap: () => toggleGender(Gender.Male),
                    inActiveColor: Theme.of(context).cardColor,
                    active: isMale,
                    child: BMIIconTile(
                      label: "MALE",
                      icon: FontAwesome5Solid.mars,
                    ),
                  ),
                ),
                Expanded(
                  child: BMICard(
                    onTap: () => toggleGender(Gender.Female),
                    inActiveColor: Theme.of(context).cardColor,
                    active: isFemale,
                    child: BMIIconTile(
                      label: "FEMALE",
                      icon: FontAwesome5Solid.venus,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: BMICard(),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: BMICard(),
                ),
                Expanded(
                  child: BMICard(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
