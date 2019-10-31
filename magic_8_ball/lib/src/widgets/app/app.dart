import 'package:flutter/material.dart';
import 'package:magic_8_ball/src/widgets/ball-page/ball-page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BallPage(),
    );
  }
}
