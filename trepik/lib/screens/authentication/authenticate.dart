import 'package:flutter/material.dart';
import 'package:trepik/universal/appBar/appBar.dart';
import 'package:trepik/screens/authentication/components/anonymous.dart';
import 'package:trepik/screens/authentication/components/email.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: TrepikAppBar(),
        body: Padding(
          padding: const EdgeInsets.all(14.0),
          child: ListView(
            children: <Widget>[
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: EmailSignInForm(),
                ),
              ),
              AnonymousSignIn(),
            ],
          ),
        ),
      ),
    );
  }
}
