import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AuthPageState();
  }
}

class _AuthPageState extends State<AuthPage> {
  String _emailValue;
  String _passwordValue;
  bool _acceptTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        title: Text(
          'Login',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white12,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/background.jpg'),
          ),
        ),
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Login to your account',
                      style: TextStyle(
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Email',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder()),
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (String value) {
                      setState(() {
                        _emailValue = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Password',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder()),
                    obscureText: true,
                    onChanged: (String value) {
                      setState(() {
                        _passwordValue = value;
                      });
                    },
                  ),
                  SwitchListTile(
                    activeColor: Colors.black,
                    value: _acceptTerms,
                    onChanged: (bool value) {
                      setState(() {
                        _acceptTerms = value;
                      });
                    },
                    title: Text(
                      'Remember',
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  RaisedButton(
                      color: Colors.black,
                      textColor: Colors.white,
                      child: Text('Login'),
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/products');
                      })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
