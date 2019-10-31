import 'package:flutter/material.dart';
import 'package:login_stateful/mixins/validation.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with ValidationMixins {
  final formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Form(
        key: formKey,
        child: Column(
          children: <Widget>[
            emailField(),
            passwordField(),
            Container(
              margin: EdgeInsets.only(top: 25),
            ),
            loginButton(),
          ],
        ),
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Email Address',
        hintText: 'someone@example.com',
      ),
      keyboardType: TextInputType.emailAddress,
      validator: emailValidation,
      onSaved: (String value) {
        email = value;
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Your password',
      ),
      obscureText: true,
      validator: passwordValidation,
      onSaved: (String value) {
        password = value;
      },
    );
  }

  Widget loginButton() {
    return RaisedButton(
      textColor: Colors.white,
      color: Colors.blue,
      onPressed: () {
        if (formKey.currentState.validate()) {
          formKey.currentState.save();
        }
      },
      child: Text('Login'),
    );
  }
}
