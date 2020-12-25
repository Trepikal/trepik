import 'package:flutter/material.dart';
import './trekCard.dart';
import './treks.dart';

void main() => runApp(MaterialApp(
      home: Treks(),
    ));

class Treks extends StatefulWidget {
  @override
  _TreksState createState() => _TreksState();
}

class _TreksState extends State<Treks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[300],
          centerTitle: true,
          elevation: 0,
          title: Text(
            "TREPIK",
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0,
            ),
          ),
        ),
        body: Container(
          color: Colors.grey[100],
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListView(
              // for some reason, just making it ListView made it stretch
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: treks.map((trek) {
                return TrekCard(trek: trek);
              }).toList(),
            ),
          ),
        ));
  }
}
