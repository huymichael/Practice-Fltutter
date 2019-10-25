import 'package:flutter/material.dart';
import 'package:login_bloc/blocs/login.bloc.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            emailField(),
            passwordField(),
            Container(margin: EdgeInsets.only(top: 20)),
            loginButton(),
          ],
        ),
      ),
    );
  }
}

Widget emailField() {
  return StreamBuilder(
    stream: loginBloc.email,
    builder: (context, snapshot) {
      return TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: 'you@example.com',
            labelText: 'Email Address',
            errorText: snapshot.error),
        onChanged: loginBloc.changeEmail,
      );
    },
  );
}

Widget passwordField() {
  return StreamBuilder(
    stream: loginBloc.password,
    builder: (context, snapshot) {
      return TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Your password',
          labelText: 'Password',
          errorText: snapshot.error,
        ),
        onChanged: loginBloc.changePassword,
      );
    },
  );
}

Widget loginButton() {
  return RaisedButton(
    color: Colors.blue,
    textColor: Colors.white,
    child: Text('Login'),
    onPressed: () {},
  );
}
