import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class DrawerComponents extends StatefulWidget {
  @override
  _DrawerComponentsState createState() => _DrawerComponentsState();
}

class _DrawerComponentsState extends State<DrawerComponents> {
  bool isSwitched1 = false;
  bool isSwitched2 = false;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text("New Event"),
            leading: Icon(Icons.event),
          ),
        ),
        Divider(
          thickness: 0.7,
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text("Cloud Connect"),
            leading: Icon(Icons.cloud),
          ),
        ),
        Divider(
          thickness: 0.7,
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text("Manage Archers"),
            leading: Icon(Icons.person_add_alt),
          ),
        ),
        Divider(
          thickness: 0.7,
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text("Buy professional"),
            leading: Icon(Icons.shopping_cart_outlined),
          ),
        ),
        Divider(
          thickness: 0.7,
        ),
        ListTile(
          title: Text("Enable Speech"),
          leading: Icon(CupertinoIcons.speaker_2_fill),
          trailing: Switch(
            value: isSwitched1,
            onChanged: (value) {
              setState(() {
                isSwitched1 = value;
              });
            },
            activeTrackColor: Colors.lightBlueAccent,
            activeColor: Colors.blue,
          ),
        ),
        Divider(
          thickness: 0.7,
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text("Install Speech Engine"),
            leading: Icon(CupertinoIcons.speaker_2),
          ),
        ),
        Divider(
          thickness: 0.7,
        ),
        ListTile(
          title: Text("Enable Proximity"),
          subtitle: Text(
              "The proximity sensor on the top of your phone can prevent you from accidentally entering points in your pocket."),
          leading: Icon(Icons.remove_red_eye_outlined),
          trailing: Switch(
            value: isSwitched2,
            onChanged: (value) {
              setState(() {
                isSwitched2 = value;
              });
            },
            activeTrackColor: Colors.lightBlueAccent,
            activeColor: Colors.blue,
          ),
        ),
        Divider(
          thickness: 0.7,
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text("Join Us on Facebook"),
            leading: Icon(Icons.contact_mail_outlined),
          ),
        ),
        Divider(
          thickness: 0.7,
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text("About 3D Score Buddy"),
            leading: Icon(Icons.info),
          ),
        ),
        Divider(
          thickness: 0.7,
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text("Quit"),
            leading: Icon(Icons.close),
          ),
        ),
        Divider(
          thickness: 0.7,
        ),
      ],
    );
  }
}
