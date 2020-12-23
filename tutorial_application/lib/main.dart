import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Trepik',
          style: TextStyle(
            fontFamily: 'Raleway',
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.green[600],
      ),
      body: Container(
        color: Colors.red[100],
        child: Text("Hello"),
        padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
        margin: EdgeInsets.fromLTRB(10, 20, 40, 80)
      ),
      floatingActionButton: FloatingActionButton(
        child: Center(
          child: Text(
            'Click',
            style: TextStyle(
              fontFamily: 'Raleway',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.green[600],
      ),
    );
  }
}
