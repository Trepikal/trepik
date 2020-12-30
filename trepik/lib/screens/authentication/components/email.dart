import 'package:flutter/material.dart';

class EmailSignInForm extends StatefulWidget {
  const EmailSignInForm({
    Key key,
  }) : super(key: key);

  @override
  _EmailSignInFormState createState() => _EmailSignInFormState();
}

class _EmailSignInFormState extends State<EmailSignInForm> {
  
  FocusNode emailFocusNode = new FocusNode();
  FocusNode passwordFocusNode = new FocusNode();

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
                focusNode: emailFocusNode,
                decoration: InputDecoration(
                  labelText: 'EMAIL',
                  labelStyle: TextStyle(
                    color: emailFocusNode.hasFocus ? Colors.green : Colors.black,
                    letterSpacing: 1.5,
                  ),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              TextFormField(
                focusNode: passwordFocusNode,
                decoration: InputDecoration(
                  labelText: 'PASSWORD',
                  labelStyle: TextStyle(
                    color: passwordFocusNode.hasFocus ? Colors.green : Colors.black,
                    letterSpacing: 1.5,
                  ),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                ),
              ),
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
