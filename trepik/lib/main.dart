import "package:flutter/material.dart";
import 'package:trepik/models/user.dart';
import 'package:trepik/screens/wrapper.dart';
import 'package:provider/provider.dart';
import 'package:trepik/services/authentication.dart';

void main() => runApp(TrepikApp());

class TrepikApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: AuthenticationService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}
