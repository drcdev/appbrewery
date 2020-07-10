import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  void playSound(int x) {
    player.play("note$x.wav");
  }

  final Map<int, Color> keys = {
    1: Colors.red,
    2: Colors.orange,
    3: Colors.yellow,
    4: Colors.green,
    5: Colors.teal,
    6: Colors.blue,
    7: Colors.purple,
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: keys
                .map(
                  (key, value) => MapEntry(
                    key,
                    Expanded(
                      child: InkWell(
                        onTap: () => playSound(key),
                        child: Container(
                          color: value,
                        ),
                      ),
                    ),
                  ),
                )
                .values
                .toList(),
          ),
        ),
      ),
    );
  }
}
