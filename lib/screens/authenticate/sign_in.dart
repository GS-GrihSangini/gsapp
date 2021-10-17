import 'package:flutter/material.dart';
import 'package:gsidapp/models/user.dart';
import 'package:gsidapp/services/auth.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        backgroundColor: Colors.purple[400],
        elevation: 0.0,
        title: Text("LOGON"),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(100),
            child: RaisedButton(
              child: Text("Login Anonymously"),
              onPressed: () async {
                dynamic result = await _auth.signInAnon();
                if (result == null) {
                  print("Error Signing In");
                } else {
                  print("Signed-In");
                  print(result);
                }
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(100),
            child: RaisedButton(
              child: Text("Login with"),
              onPressed: () async {
                dynamic result = await _auth.signInAnon();
                if (result == null) {
                  print("Error Signing In");
                } else {
                  print("Signed-In");
                  print(result.uid);
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
