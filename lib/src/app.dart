import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

class App extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login Bloc Pattern'),
        ),
        body: LoginScreen(),
      ),
    );
  }

}