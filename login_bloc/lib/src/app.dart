import 'package:flutter/material.dart';
import 'pages/login_page/login_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login App',
      home: Scaffold(
        body: LoginPage(),
      ),
    );
  }
}
