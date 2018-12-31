import 'package:flutter/material.dart';
import 'bloc.dart';

// Creating scoped bloc pattern provider
class Provider extends InheritedWidget {
  final Bloc bloc = new Bloc();

  Provider({Key key, Widget child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

  static Bloc of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(Provider) as Provider).bloc;
  }
}
