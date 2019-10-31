import 'package:flutter/material.dart';

import 'ball.dart';

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask me everything'),
        backgroundColor: Colors.blue[900],
      ),
      body: Ball(),
    );
  }
}
