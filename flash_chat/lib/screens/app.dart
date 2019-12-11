import 'package:flash_chat/screens/chat/chat.screen.dart';
import 'package:flash_chat/screens/login/login.screen.dart';
import 'package:flash_chat/screens/registration/registration.screen.dart';
import 'package:flutter/material.dart';

import 'welcome/welcome.screen.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
      home: WelcomeScreen(),
    );
  }
}
