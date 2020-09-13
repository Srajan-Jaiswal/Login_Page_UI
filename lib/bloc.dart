import 'dart:async';
import 'validator.dart';
import 'package:rxdart/rxdart.dart';

class Bloc extends Object with Validators implements BaseBloc {
  final _usernameController = StreamController<String>();
  final _passwordController = StreamController<String>();

  Stream<String> get username =>
      _usernameController.stream.transform(usernameValidator);
  Stream<String> get password =>
      _passwordController.stream.transform(passwordValidator);
  // stream controller
  Stream<bool> get loginCheck =>
      Observable.latest2(username, password, (u, p) => true);
  // using  rx dart  for enbling  the button  feature
  // obserable is the stream controller in case of rx dart

  void dispose() {
    _usernameController?.close();
    _passwordController?.close();
  }
}

abstract class BaseBloc {
  void dispose();
}
