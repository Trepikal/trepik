import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trepik/screens/home/home.dart';
import 'package:trepik/screens/authentication/authenticate.dart';
import 'package:trepik/models/user.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<TrepikUser>(context);
    print(user);
    // return either home or authenticate widget
    return Authenticate();
  }
}
