import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:custom_switch/custom_switch.dart';
import 'package:scorebuddy/Components/add_archer_dialogbox.dart';
import 'package:scorebuddy/Components/duplicate_event_dialogbox.dart';

class NewEventInput extends StatefulWidget {
  const NewEventInput({
    Key key,
  }) : super(key: key);

  @override
  _NewEventInputState createState() => _NewEventInputState();
}

class _NewEventInputState extends State<NewEventInput> {
  bool isInstructionsOn = true;
  @override
  Widget build(BuildContext context) {
    return new AlertDialog(
      contentPadding: EdgeInsets.only(top: 10.0),
      // insetPadding: EdgeInsets.all(10),
      content: Column(
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
                    const Text('New Event',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0)),
                    MaterialButton(
                        onPressed: () {
                          setState(() {
                            isInstructionsOn = !isInstructionsOn;
                          });
                        },
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: Colors.black12,
                              width: 1,
                              style: BorderStyle.solid),
                        ),
                        child: Column(
                          children: [
                            Text(
                              isInstructionsOn
                                  ? "Instructions On"
                                  : 'Instructions Off',
                              style: TextStyle(color: Colors.black),
                            ),
                            Container(
                              height: 3.0,
                              width: 35.0,
                            ),
                            Container(
                              height: 3.0,
                              width: 35.0,
                              color:
                                  isInstructionsOn ? Colors.blue : Colors.grey,
                            ),
                          ],
                        ))
                  ],
                ),
              ),
              Divider(
                thickness: 1.0,
                color: Colors.blue,
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Container(
                  width: 350,
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: ListView(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Optional Description",
                          suffixIcon: IconButton(
                            icon: Icon(
                              Icons.arrow_drop_down_circle_outlined,
                              color: Colors.grey,
                            ),
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) =>
                                    DuplicateEventDialogBox(),
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
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 2),
                        child: Row(
                          children: [
                            Label(
                              labelText: 'Preset:',
                            ),
                            ButtonWithLabel(
                              label: 'Animal',
                              onpress: () {},
                            ),
                            ButtonWithLabel(
                              label: 'Hunter',
                              onpress: () {},
                            ),
                            ButtonWithLabel(
                              label: 'Standard',
                              onpress: () {},
                            ),
                          ],
                        ),
                      ),
                      Description(
                        descriptionText:
                            'Press and hold the preset buttons to overwrite the default settings.',
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 40.0,
                          ),
                          Text('Arrow1'),
                          Text('Arrow2'),
                          Text('Arrow3'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Zone1'),
                          CheckboxWithTextField(),
                          CheckboxWithTextField(),
                          CheckboxWithTextField(),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Zone2'),
                          CheckboxWithTextField(),
                          CheckboxWithTextField(),
                          CheckboxWithTextField(),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Zone3'),
                          CheckboxWithTextField(),
                          CheckboxWithTextField(),
                          CheckboxWithTextField(),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Zone4'),
                          CheckboxWithTextField(),
                          CheckboxWithTextField(),
                          CheckboxWithTextField(),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Label(
                          labelText: 'Tournament mode:',
                        ),
                      ),
                      Row(
                        children: [
                          LabelWithTextField(
                            label: 'Starting target:',
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          LabelWithTextField(
                            label: 'Target\ncount:',
                          ),
                        ],
                      ),
                      Container(
                          child: isInstructionsOn
                              ? Description(
                                  descriptionText:
                                      'On tournament mode the amount of shots are limited by the count of targets available. The starting target will be your first shot.',
                                )
                              : null),
                      ToggleBoxwithLabel(
                        labelText: 'Archer rotation:',
                      ),
                      Container(
                          child: isInstructionsOn
                              ? Padding(
                                  padding: EdgeInsets.only(top: 5.0),
                                  child: Description(
                                    descriptionText:
                                        'At the next target the second archer starts on first position.',
                                  ),
                                )
                              : null),
                      ToggleBoxwithLabel(
                        labelText: 'GPS recording:',
                      ),
                      ToggleBoxwithLabel(
                        labelText: 'Track recording:',
                      ),
                      Container(
                          child: isInstructionsOn
                              ? Padding(
                                  padding: EdgeInsets.only(top: 5.0),
                                  child: Description(
                                    descriptionText:
                                        'With the GPS tracking the shot targets will be displayed in a map and, if the track recording is enabled, also the track.\nAttention: to record the whole track uses clearly more accu power than only recording the targets position!',
                                  ),
                                )
                              : null),
                    ],
                  )),
            ),
          ),
        ],
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
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => AddArcher(),
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

class ToggleBoxwithLabel extends StatefulWidget {
  bool isOn = true;
  final labelText;
  ToggleBoxwithLabel({this.labelText});

  @override
  _ToggleBoxwithLabelState createState() => _ToggleBoxwithLabelState();
}

class _ToggleBoxwithLabelState extends State<ToggleBoxwithLabel> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Label(
            labelText: '${widget.labelText}',
          ),
          Container(
            child: CustomSwitch(
              activeColor: Colors.blue,
              value: widget.isOn,
              onChanged: (value) {
                setState(() {
                  widget.isOn = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Description extends StatelessWidget {
  final descriptionText;
  Description({this.descriptionText});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$descriptionText',
      style: TextStyle(fontSize: 13.0),
    );
  }
}

class CheckboxWithTextField extends StatefulWidget {
  @override
  _CheckboxWithTextFieldState createState() => _CheckboxWithTextFieldState();
}

class _CheckboxWithTextFieldState extends State<CheckboxWithTextField> {
  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
            ),
            width: 20.0,
            height: 20.0,
            child: Checkbox(
              value: isChecked,
              onChanged: (bool value) {
                setState(() {
                  isChecked = value;
                });
              },
              checkColor: Colors.blue,
              activeColor: Colors.white,
            ),
          ),
          SizedBox(
            width: 7.0,
          ),
          Container(
            width: 25.0,
            height: 25.0,
            child: TextField(
              decoration: InputDecoration(
                hintText: "",
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
    );
  }
}

class Label extends StatelessWidget {
  final labelText;
  Label({this.labelText});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$labelText',
      style: TextStyle(fontSize: 20.0),
    );
  }
}

class ButtonWithLabel extends StatelessWidget {
  final label;
  final Function onpress;

  ButtonWithLabel({this.label, this.onpress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        height: 30.0,
        decoration: BoxDecoration(
          color: Colors.black26,
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0),
          child: TextButton(
            onPressed: onpress,
            child: Text(
              '$label',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LabelWithTextField extends StatelessWidget {
  final label;
  LabelWithTextField({this.label});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(),
            child: Text('$label'),
          ),
          SizedBox(
            width: 7.0,
          ),
          Container(
            width: 25.0,
            height: 25.0,
            child: TextField(
              decoration: InputDecoration(
                hintText: "",
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
    );
  }
}
