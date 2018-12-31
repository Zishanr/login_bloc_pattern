import 'dart:async';
import 'validators.dart';

// Adding Validator mixins in Bloc class
class Bloc extends Object with Validators {
  // Making StreamController variables private
  final StreamController _emailStreamController =
      new StreamController<String>();
  final StreamController _passwordStreamController =
      new StreamController<String>();

  // getter annotation -> function to add data to stream.
  Function(String) get changeEmail => _emailStreamController.sink.add;

  Function(String) get changePassword => _passwordStreamController.sink.add;

  // getter annotation -> function to retrieve data from stream.
  Stream<String> get email =>
      _emailStreamController.stream.transform(validateEmail);

  Stream<String> get password =>
      _passwordStreamController.stream.transform(validatePassword);

  // Closing sink object
  dispose() {
    _emailStreamController.close();
    _passwordStreamController.close();
  }
}

// Bloc Pattern using Single Global instance
//final Bloc bloc = new Bloc();
