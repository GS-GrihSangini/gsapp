import 'package:flutter/material.dart';
import 'package:gsidapp/services/auth.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        backgroundColor: Colors.purple[400],
        elevation: 0.0,
        title: Text("Register"),
      ),
      body: Container(
        padding: EdgeInsets.all(100),
        // child: RaisedButton(
        //   child: Text("Login Anonymously"),
        // ),
      ),
    );
    ;
  }
}
