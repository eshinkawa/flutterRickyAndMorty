import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<CardWidget> {
  bool doneCheckbox = true;
  String task = "Task1";

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black54,
            blurRadius: 100.0,
          ),
      ]),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.zero),
        ),
        margin: EdgeInsets.all(15.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              contentPadding: EdgeInsets.all(20.0),
              leading: Checkbox(
                  value: true,
                  onChanged: (doneCheckbox) {
                    print(doneCheckbox);
                  }),
              title: Text('The Enchanted Nightingale'),
              subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
            ),
          ],
        ),
      ),
    );
  }
}
