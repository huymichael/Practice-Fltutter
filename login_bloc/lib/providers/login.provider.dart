import 'package:flutter/material.dart';
import 'package:login_bloc/blocs/login.bloc.dart';

class LoginProvider extends InheritedWidget {
  final loginBloc = LoginBloc();

  LoginProvider({Key key, Widget child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return true;
  }

  static LoginBloc of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(LoginProvider)
            as LoginProvider)
        .loginBloc;
  }
}
