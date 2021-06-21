import 'package:flutter/material.dart';

enum SingingCharacter { event1, event2, event3, event4 }

class DuplicateEventDialogBox extends StatefulWidget {
  @override
  _DuplicateEventDialogBoxState createState() =>
      _DuplicateEventDialogBoxState();
}

class _DuplicateEventDialogBoxState extends State<DuplicateEventDialogBox> {
  SingingCharacter _character = SingingCharacter.event1;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.only(top: 10.0),
      // insetPadding: EdgeInsets.all(10),
      content: Container(
        height: 250,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 8.0, left: 10.0, right: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Duplicate an existing event',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0)),
                    ],
                  ),
                ),
                Divider(
                  thickness: 1.0,
                  color: Colors.blue,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Container(
                  width: 350,
                  height: 200,
                  child: ListView(
                    children: [
                      RadioListTile<SingingCharacter>(
                        contentPadding: EdgeInsets.all(0),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Event 1',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(' of 25.05.2021'),
                              ],
                            ),
                            Text('0/0 named targets')
                          ],
                        ),
                        value: SingingCharacter.event1,
                        groupValue: _character,
                        onChanged: (SingingCharacter value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                      Divider(
                        thickness: 1.0,
                      ),
                      RadioListTile<SingingCharacter>(
                        contentPadding: EdgeInsets.all(0),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Event 2',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(' of 22.05.2021'),
                              ],
                            ),
                            Text('0/2 named targets')
                          ],
                        ),
                        value: SingingCharacter.event2,
                        groupValue: _character,
                        onChanged: (SingingCharacter value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                      Divider(
                        thickness: 1.0,
                      ),
                      RadioListTile<SingingCharacter>(
                        contentPadding: EdgeInsets.all(0),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Event 3',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(' of 15.05.2021'),
                              ],
                            ),
                            Text('0/5 named targets')
                          ],
                        ),
                        value: SingingCharacter.event3,
                        groupValue: _character,
                        onChanged: (SingingCharacter value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                      Divider(
                        thickness: 1.0,
                      ),
                      RadioListTile<SingingCharacter>(
                        contentPadding: EdgeInsets.all(0),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Event 4',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(' of 08.05.2021'),
                              ],
                            ),
                            Text('0/6 named targets')
                          ],
                        ),
                        value: SingingCharacter.event4,
                        groupValue: _character,
                        onChanged: (SingingCharacter value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                      Divider(
                        thickness: 1.0,
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        Container(
          width: 350.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              new FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                textColor: Theme.of(context).primaryColor,
                child: const Text('Close'),
              ),
              new FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                textColor: Theme.of(context).primaryColor,
                child: const Text('Ok'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
