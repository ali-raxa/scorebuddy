import 'package:flutter/material.dart';
import 'package:scorebuddy/Components/choose_archer_dialog.dart';
import 'package:scorebuddy/Screens/event_screen.dart';

class AddArcher extends StatefulWidget {
  @override
  _AddArcherState createState() => _AddArcherState();
}

class _AddArcherState extends State<AddArcher> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.only(top: 10.0),
      // insetPadding: EdgeInsets.all(10),
      content: Container(
        height: 210,
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
                      Row(
                        children: [
                          Icon(
                            Icons.person_add_alt_1,
                            color: Colors.black45,
                            size: 30.0,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text('Add an Archer',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0)),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 1.0,
                  color: Colors.blue,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                  child: Row(
                    children: [
                      Text('Name:'),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "required",
                            suffixIcon: IconButton(
                              icon: Icon(
                                Icons.arrow_drop_down_circle_outlined,
                                color: Colors.grey,
                              ),
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      ChooseArcherDialog(),
                                );
                              },
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 1, horizontal: 8),
                  child: Row(
                    children: [
                      Text('Bow\nclass:'),
                      SizedBox(
                        width: 14.0,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "optional",
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                    right: 8.0,
                    top: 12.0,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.info,
                        color: Colors.grey,
                        size: 35,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: Text(
                          'Hint: using the menu or the button on the top right you can add additional archers.',
                          style: TextStyle(fontSize: 14.0),
                        ),
                      )
                    ],
                  ),
                )
              ],
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
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => EventScreen()),
                  );
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
