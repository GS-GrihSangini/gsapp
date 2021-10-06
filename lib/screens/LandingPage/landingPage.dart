import 'package:flutter/material.dart';
import 'package:gsidapp/screens/authenticate/register.dart';
import 'package:gsidapp/screens/authenticate/sign_in.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Landing Page"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(45),
            child: RaisedButton(
              child: Text("Login"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignIn()),
                );
              },
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(45),
            child: RaisedButton(
              child: Text("Sign Up"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Register()),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
