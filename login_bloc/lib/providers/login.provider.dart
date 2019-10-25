import 'package:flutter/material.dart';
import 'package:login_bloc/blocs/login.bloc.dart';

class LoginProvider extends InheritedWidget {
  final loginBloc = LoginBloc();

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return null;
  }

  static LoginBloc of(context) {
    return (context.inheritFormWidgetofExactType(LoginProvider)
            as LoginProvider)
        .loginBloc;
  }
}
