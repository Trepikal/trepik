import "package:flutter/material.dart";
import "package:trepik/components/general/NavBar.dart";

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            FlatButton.icon(
                onPressed: (){
                  Navigator.pushNamed(context, "/profile");
                },
                icon: Icon(Icons.edit_location),
                label: Text("Edit Location"),
            )
          ],
        ),
      ),
      bottomNavigationBar: NavBar(startingIndex: 0),
    );
  }
}
