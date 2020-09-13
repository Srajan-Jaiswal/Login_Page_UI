import 'dart:async';

mixin Validators {
  var usernameValidator = StreamTransformer<String, String>.fromHandlers(
      handleData: (username, sink) {
    if (username.contains("@")) {
      sink.add(username);
    } else {
      sink.addError("Username is not valid");
    }
  } // username //string of username  // sink

      );

  var passwordValidator = StreamTransformer<String, String>.fromHandlers(
      handleData: (password, sink) {
    if (password.length > 4) {
      sink.add(password);
    } else {
      sink.addError("Password length should be greater than  4 characters.");
    }
  } // username //string of username  // sink

      );
}
