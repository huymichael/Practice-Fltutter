import 'dart:async';

import 'login.bloc.validation.dart';

class LoginBloc with LoginValidator {
  final _email = StreamController<String>();
  final _password = StreamController<String>();

  //Add data to stream
  Stream<String> get email => _email.stream.transform(validateEmail);

  Stream<String> get password => _password.stream.transform(validatePassword);

//  Change data
  Function(String) get changeEmail => _email.sink.add;

  Function(String) get changePassword => _password.sink.add;

  dispose() {
    _email.close();
    _password.close();
  }
}

final loginBloc = LoginBloc();
