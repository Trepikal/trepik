import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Treks(),
));

class Trek {
  String name;
  String description;
  int distance;
  int difficulty;
  bool done;

  Trek(String name, String description, int distance, int difficulty, bool done) {
    this.name = name;
    this.description = description;
    this.distance = distance;
    this.difficulty = difficulty;
    this.done = done;
  }
}

class Treks extends StatefulWidget {
  @override
  _TreksState createState() => _TreksState();
}

class _TreksState extends State<Treks> {

  List<Trek> treks = [
    Trek("Frodo's Journey", "Simply Walk into Mordor.", 1800, 2, false),
    Trek("Bilbo's Journey", "There and Back Again", 1600, 1, false),
    Trek("Lost City of the Incas", "Into the Heart of the Amazon", 1200, 3, false),
  ];

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
          child: ListView (
            // for some reason, just making it ListView made it stretch
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: treks.map((trek) {
              return Card(
                elevation: 0,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        trek.name,
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 20.0,
                          letterSpacing: 2.0,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        trek.description,
                        style: TextStyle(
                          color: Colors.grey[500],
                          letterSpacing: 1.5,
                        ),
                      ),
                      Divider(
                        height: 25.0,
                        color: Colors.grey,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "DISTANCE",
                                style: TextStyle(
                                  color: Colors.grey,
                                  letterSpacing: 2.0,
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                '${trek.distance}',
                                style: TextStyle(
                                  color: Colors.greenAccent[700],
                                  fontSize: 18.0,
                                  letterSpacing: 2.0,
                                )
                              ),
                            ],
                          ),
                          FlatButton(
                            color: Colors.greenAccent[700],
                            onPressed: (){},
                            child: Text(
                              "START",
                              style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 2.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      )
    );
  }
}
