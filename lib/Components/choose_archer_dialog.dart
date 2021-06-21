import 'package:flutter/material.dart';

class ChooseArcherDialog extends StatefulWidget {
  @override
  _ChooseArcherDialogState createState() => _ChooseArcherDialogState();
}

class _ChooseArcherDialogState extends State<ChooseArcherDialog> {
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
                          Text('Choose an Archer',
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
                Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 8,
                      width: MediaQuery.of(context).size.width,
                      child: ListView(
                        children: [
                          CheckboxWithLabel(
                            label: 'Archer 1',
                            isChecked: false,
                          ),
                          Divider(
                            thickness: 1.5,
                          ),
                          CheckboxWithLabel(
                            label: 'Archer 2',
                            isChecked: false,
                          ),
                          Divider(
                            thickness: 1.5,
                          ),
                          CheckboxWithLabel(
                            label: 'Archer 3',
                            isChecked: false,
                          ),
                          Divider(
                            thickness: 1.5,
                          ),
                        ],
                      ),
                    ),
                    Container(
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
                              'Hint: if you select multiple archers at once, they will instantly be added to the event. Changes to an archer can be done on long time tapping to the archers name.',
                              style: TextStyle(fontSize: 14.0),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
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

class CheckboxWithLabel extends StatefulWidget {
  String label = "";
  bool isChecked = false;
  CheckboxWithLabel({this.label, this.isChecked});
  @override
  _CheckboxWithLabelState createState() => _CheckboxWithLabelState();
}

class _CheckboxWithLabelState extends State<CheckboxWithLabel> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: widget.isChecked,
            onChanged: (bool value) {
              setState(() {
                widget.isChecked = value;
              });
            }),
        Text(widget.label),
      ],
    );
  }
}
