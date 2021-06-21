import 'package:flutter/material.dart';
import 'package:scorebuddy/Components/Drawercomponents.dart';
import 'package:scorebuddy/Components/newevent.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:scorebuddy/Components/new_event_dialog_box.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSwitched1 = false;
  bool isSwitched2 = false;
  bool anyEvent = false;
  final List<Widget> eventList = [
    NewEvent(
      eventTime: 8,
      player1name: "Aun",
      player1score: 12,
      player2name: "zer",
      player2score: 16,
    ),
    NewEvent(
      eventTime: 3,
      player1name: "Ali",
      player1score: 15,
      player2name: "Arslan",
      player2score: 20,
    ),
    NewEvent(
      eventTime: 20,
      player1name: "Bilal",
      player1score: 19,
      player2name: "Aqib",
      player2score: 24,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      appBar: AppBar(
        title: Text("3D Score Buddy"),
        backgroundColor: Color(0XFF202124),
      ),
      drawer: Drawer(
        child: DrawerComponents(),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        child: Row(
                          children: [
                            Icon(
                              Icons.event,
                              color: Colors.white,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
                              child: Text(
                                'Start New Event',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.redAccent,
                        ),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) => NewEventInput(),
                          );
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          TextButton(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.cloud,
                                  color: Colors.white,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(40, 8, 40, 8),
                                  child: Text(
                                    'Cloud-Connect',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.grey,
                            ),
                            onPressed: () {},
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Expanded(
                              child: TextButton(
                            onPressed: () {},
                            child: Image.asset(
                              "images/q4.jpeg",
                              height: 50,
                              width: 50,
                            ),
                          ))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Divider(
              height: 8,
            ),
            Builder(
              builder: (context) {
                // final double height = MediaQuery.of(context).size.height;
                return CarouselSlider(
                  options: CarouselOptions(
                    // height: height,
                    viewportFraction: 1.0,
                    enlargeCenterPage: false,
                    // autoPlay: false,
                  ),
                  items: eventList
                      .map((item) => Container(
                            child: Center(
                              child: item,
                            ),
                          ))
                      .toList(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
