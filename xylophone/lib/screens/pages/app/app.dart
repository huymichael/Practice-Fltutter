import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void playeSound(int soundNumber) {
      final player = AudioCache();
      player.play('audio/note$soundNumber.wav');
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              FlatButton(
                color: Colors.red,
                child: Text('Audio 1'),
                onPressed: () {
                  playeSound(1);
                },
              ),
              FlatButton(
                color: Colors.orange,
                child: Text('Audio 2'),
                onPressed: () {
                  playeSound(2);
                },
              ),
              FlatButton(
                color: Colors.yellow,
                child: Text('Audio 3'),
                onPressed: () {
                  playeSound(3);
                },
              ),
              FlatButton(
                color: Colors.green,
                child: Text('Audio 4'),
                onPressed: () {
                  playeSound(4);
                },
              ),
              FlatButton(
                color: Colors.teal,
                child: Text('Audio 5'),
                onPressed: () {
                  playeSound(5);
                },
              ),
              FlatButton(
                color: Colors.blue,
                child: Text('Audio 6'),
                onPressed: () {
                  playeSound(6);
                },
              ),
              FlatButton(
                color: Colors.deepPurple,
                child: Text('Audio 7'),
                onPressed: () {
                  playeSound(7);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
