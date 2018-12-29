import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            emailTextField(),
            passwordTextField(),
            Container(
              margin: EdgeInsets.all(15.0),
            ),
            loginButton(),
          ],
        ));
  }

  Widget emailTextField() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          icon: Icon(Icons.person),
          labelText: 'Email',
          labelStyle: TextStyle(
            color: Colors.red,
            fontSize: 20.0,
          ),
          hintText: 'Enter email address'),
    );
  }

  Widget passwordTextField() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
          icon: Icon(Icons.security),
          labelText: 'Password',
          labelStyle: TextStyle(
            color: Colors.red,
            fontSize: 20.0,
          ),
          hintText: 'Enter password'),
    );
  }

  Widget loginButton() {
    return RaisedButton(
      onPressed: (){},
      textColor: Colors.white,
      color: Colors.red,
      child: Text('Login'),
    );
  }
}
