import 'package:flutter/material.dart';
import '../blocs/bloc.dart';
import '../blocs/provider.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Bloc bloc = Provider.of(context);
    return Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            emailTextField(bloc),
            passwordTextField(bloc),
            Container(
              margin: EdgeInsets.all(15.0),
            ),
            loginButton(),
          ],
        ));
  }

  Widget emailTextField(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.email,
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        return TextField(
          onChanged: bloc.changeEmail,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            icon: Icon(Icons.person),
            labelText: 'Email',
            labelStyle: TextStyle(
              color: Colors.red,
              fontSize: 20.0,
            ),
            hintText: 'Enter email address',
            errorText: snapshot.error,
          ),
        );
      },
    );
  }

  Widget passwordTextField(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.password,
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        return TextField(
          onChanged: bloc.changePassword,
          obscureText: true,
          decoration: InputDecoration(
            icon: Icon(Icons.security),
            labelText: 'Password',
            labelStyle: TextStyle(
              color: Colors.red,
              fontSize: 20.0,
            ),
            hintText: 'Enter password',
            errorText: snapshot.error,
          ),
        );
      },
    );
  }

  Widget loginButton() {
    return RaisedButton(
      onPressed: () {},
      textColor: Colors.white,
      color: Colors.red,
      child: Text('Login'),
    );
  }
}
