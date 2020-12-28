import "package:flutter/material.dart";

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
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
    );
  }
}
