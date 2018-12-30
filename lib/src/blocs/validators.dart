import 'dart:async';

// Validator Transformer ->  Mixins Class

class Validators {

  // Email ValidatorTransformer
  final validateEmail = StreamTransformer<String, String>.fromHandlers(
      handleData: (String email, EventSink<String> sink) {
    if (email.length == 0) {
      sink.addError('Email Address cant be empty');
    } else if (!email.contains('@')) {
      sink.addError('Enter valid email address');
    } else {
      sink.add(email);
    }
  });

  // Password ValidatorTransformer
  final validatePassword = StreamTransformer<String, String>.fromHandlers(
      handleData: (String password, EventSink<String> sink) {
    if (password.length == 0) {
      sink.addError('Password cant be empty');
    } else if (password.length < 4) {
      sink.addError('Password length must be greater than 4');
    } else {
      sink.add(password);
    }
  });
}
