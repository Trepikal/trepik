import 'package:flutter/material.dart';
import 'package:trepik/services/authentication.dart';

class AnonymousSignIn extends StatefulWidget {
  const AnonymousSignIn({
    Key key,
  }) : super(key: key);

  @override
  _AnonymousSignInState createState() => _AnonymousSignInState();
}

class _AnonymousSignInState extends State<AnonymousSignIn> {
  final AuthenticationService _auth = AuthenticationService();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FlatButton(
          onPressed: () async {
            dynamic result = await _auth.signInAnon();
            if (result == null) {
              print('error signing in anonymously.');
            } else {

              

              print('signed in.');
              print(result.uid);
            }
          },
          child: Text(
            'SKIP SIGN IN FOR NOW',
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}
