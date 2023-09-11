import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Login App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: LoginForm(),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: 'Login Form',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Semantics(
              label: 'Username Input',
              child: TextField(
                decoration: InputDecoration(labelText: 'Username'),
              ),
            ),
            SizedBox(height: 20.0),
            Semantics(
              label: 'Password Input',
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(labelText: 'Password'),
              ),
            ),
            SizedBox(height: 20.0),
            Semantics(
              label: 'Login Button',
              child: ElevatedButton(
                onPressed: () {
                  // Add your login logic here
                },
                child: Text('Login'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
