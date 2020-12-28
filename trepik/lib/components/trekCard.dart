import 'package:flutter/material.dart';
import '../classes/trek.dart';

class TrekCard extends StatelessWidget {
  final Trek trek;
  final Function start;
  TrekCard({this.trek, this.start});

  @override
  Widget build(BuildContext context) {
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
                child: Text(trek.description,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      letterSpacing: 1.5,
                      color: Colors.grey[400],
                    ))),
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
                  onPressed: () {
                    print(trek.difficulty);
                    start(trek);
                  },
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
  }
}
