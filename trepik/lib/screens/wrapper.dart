import 'package:flutter/material.dart';
import 'package:trepik/pages/home.dart';
import 'package:trepik/screens/authentication/authenticate.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return either home or authenticate widget
    return Authenticate();
  }
}
