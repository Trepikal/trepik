import "package:flutter/material.dart";
import 'package:trepik/components/general/NavBar.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  // yeah, so, it's ES6 but in a different order, syntactically speaking.
  // easy!
  void getData() async {
    // network request for a username, simulated
    int age = await Future.delayed(Duration(seconds: 3), () {
      return 111;
    });

    print(age);
  }

  // this is tantamount to a mounted hook in react or Vue;
  @override
  void initState() {
    super.initState();
    print('initState function ran');
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.greenAccent[700],
        title: Text("LOCATION"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Text("hey ho location o "),
      bottomNavigationBar: NavBar(startingIndex: 3),
    );
  }
}
