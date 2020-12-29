import 'package:flutter/material.dart';

class EmailSignInForm extends StatelessWidget {
  const EmailSignInForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text("Sign in with Email and Password"),
        Form(
          child: Column(
            children: <Widget>[
              SizedBox(height: 30),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email',
                ),
              ),
              SizedBox(height: 30),
              TextFormField(
                  decoration: InputDecoration(
                hintText: 'Password',
              )),
              SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FlatButton(
                    color: Colors.green,
                    onPressed: () {},
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}