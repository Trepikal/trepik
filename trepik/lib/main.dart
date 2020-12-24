import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Treks(),
    ));

// something to note: Screwing with this class syntax mandated that the application be rebuilt, not hot reloaded. The hot reload would not track the image update.
class Trek {
  String name;
  String tagline;
  String description;
  int distance;
  int difficulty;
  bool done;
  String image;

  // constructor
  Trek(String name, String tagline, String description, int distance, int difficulty, bool done,
      String image) {
    this.name = name;
    this.tagline = tagline;
    this.description = description;
    this.distance = distance;
    this.difficulty = difficulty;
    this.done = done;
    this.image = image;
  }
}

class Treks extends StatefulWidget {
  @override
  _TreksState createState() => _TreksState();
}

class _TreksState extends State<Treks> {
  List<Trek> treks = [
    Trek("Frodo's Journey", "Simply Walk into Mordor.", "On Trepik's Flagship journey, join Frodo as he walks the 1800 miles between Bag End and Mount Doom to cast the ring into the fires. This mighty journey has customizable difficulty levels to make sure the experience is unique to you.", 1800, 2, false,
        'fellowship.jpg'),
    Trek("Bilbo's Journey", "There and Back Again", "Follow the path of the Company of Thorin Oakenshield as they head toward the lonely mountain. Great for a first long journey, Bilbo and company set a comparatively easy pace. But be warned -- you may not come back the same.", 1600, 1, false,
        'hobbit.png'),
    Trek("Lost City of the Incas", "Into the Heart of the Amazon", "It was long fabled that cities of gold scattered the lost tributaries of the Amazon Delta. On this unique rowing-based long distance journey, set forth into the untamed jungle in search of a mystical eden long secreted from the world.", 1200, 3,
        false, 'eldorado.jpg'),
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
            child: ListView(
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
                        Row(children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/${trek.image}'),
                            radius: 25.0,
                          ),
                          SizedBox(width: 15.0),
                          Column(
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
                                trek.tagline,
                                style: TextStyle(
                                  color: Colors.grey[500],
                                  letterSpacing: 1.5,
                                ),
                              ),
                            ],
                          ),
                        ]),
                        Divider(
                          height: 25.0,
                          color: Colors.grey,
                        ),
                        Container(
                          child: Text(
                            trek.description,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              letterSpacing: 1.5,
                              color: Colors.grey[400],
                            )
                          )
                        ),
                        SizedBox(height: 15.0),
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
                                Text('${trek.distance}',
                                    style: TextStyle(
                                      color: Colors.greenAccent[700],
                                      fontSize: 18.0,
                                      letterSpacing: 2.0,
                                    )),
                              ],
                            ),
                            FlatButton(
                              color: Colors.greenAccent[700],
                              onPressed: () {},
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
        ));
  }
}
