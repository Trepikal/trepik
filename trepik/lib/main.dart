import "package:flutter/material.dart";
import "package:trepik/pages/home.dart";
import "package:trepik/pages/loading.dart";
import "package:trepik/pages/profile.dart";
import "package:trepik/pages/trek-page.dart";

void main() => runApp(MaterialApp(
  initialRoute: '/home', 
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/treks': (context) => Treks(),
    '/profile': (context) => Profile(),
  }
));
