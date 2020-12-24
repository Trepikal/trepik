import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: HobbitCard(),
    ));

class HobbitCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "PROFILE",
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.grey[100],
          elevation: 0,
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage("assets/merry.jpg")),
              ),
              Divider(
                height: 60.0,
                color: Colors.grey[800],
              ),
              Text("NAME",
                  style: TextStyle(
                    color: Colors.grey[600],
                    letterSpacing: 2.0,
                  )),
              SizedBox(
                height: 10.0,
              ),
              Text("Merry Brandybuck",
                  style: TextStyle(
                    color: Colors.greenAccent[700],
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(height: 30.0),
              Text("TOTAL MILEAGE",
                  style: TextStyle(
                    color: Colors.grey[600],
                    letterSpacing: 2.0,
                  )),
              SizedBox(
                height: 10.0,
              ),
              Text("86.7",
                  style: TextStyle(
                    color: Colors.greenAccent[700],
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(height: 20.0),
              Row(children: [
                Icon(Icons.map, color: Colors.greenAccent[700]),
                SizedBox(width: 10.0),
                Text("Brandy Hall, Buckland",
                    style:
                        TextStyle(color: Colors.grey[500], letterSpacing: 1.5))
              ]),
              Divider(
                height: 40.0,
                color: Colors.grey[800],
              ),
              Text(
                "TREKS",
                style: TextStyle(
                  color: Colors.grey[800],
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Card(
                      color: Colors.grey[100],
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Icon(
                              Icons.public,
                              color: Colors.greenAccent[700],
                            ),
                            SizedBox(height: 10.0),
                            Text("Frodo's Journey",
                                style: TextStyle(
                                  color: Colors.grey,
                                  letterSpacing: 2.0,
                                )),
                            SizedBox(height: 10.0),
                            Text(
                              "85.4/1800",
                              style: TextStyle(
                                color: Colors.greenAccent[700],
                                letterSpacing: 1.5,
                                fontSize: 25,
                              ),
                            ),
                            SizedBox(height: 14.0),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      color: Colors.grey[100],
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Icon(
                              Icons.public,
                              color: Colors.greenAccent[700],
                            ),
                            SizedBox(height: 10.0),
                            Text("Bilbo's Journey",
                                style: TextStyle(
                                  color: Colors.grey,
                                  letterSpacing: 2.0,
                                )),
                            SizedBox(height: 10.0),
                            Text(
                              "1.3/1600",
                              style: TextStyle(
                                color: Colors.greenAccent[700],
                                letterSpacing: 1.5,
                                fontSize: 25,
                              ),
                            ),
                            SizedBox(height: 14.0),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
