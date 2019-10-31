import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void playSound(int soundNumber) {
      final player = AudioCache();
      player.play('note$soundNumber.wav');
    }

    Expanded buildToneKey({Color color, int soundNumber}) {
      return Expanded(
        child: FlatButton(
          color: color,
          child: Text(''),
          onPressed: () {
            playSound(soundNumber);
          },
        ),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildToneKey(color: Colors.red, soundNumber: 1),
              buildToneKey(color: Colors.orange, soundNumber: 2),
              buildToneKey(color: Colors.yellow, soundNumber: 3),
              buildToneKey(color: Colors.green, soundNumber: 4),
              buildToneKey(color: Colors.teal, soundNumber: 5),
              buildToneKey(color: Colors.blue, soundNumber: 6),
              buildToneKey(color: Colors.deepPurple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
