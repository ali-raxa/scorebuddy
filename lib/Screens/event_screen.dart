import 'package:flutter/material.dart';
import 'package:scorebuddy/Components/Drawercomponents.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:scorebuddy/Components/selectscore_pad.dart';

class EventScreen extends StatefulWidget {
  @override
  _EventScreenState createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  bool anyEvent = false;
  bool onclick = false;
  int _selectedIndex = 0;
  final List<Widget> scoreOptionList = [
    SelectScorePad(),
  ];
  var archerList = [
    {
      "name": "Ali Raza",
      "totalScore": "30",
      "currentScore": "14",
    },
    {
      "name": "Arslan",
      "totalScore": "40",
      "currentScore": "4",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      appBar: AppBar(
        title: Text("New Event"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
              child: Icon(Icons.person_add),
              onTap: () {},
            ),
          ),
        ],
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
                  child: ListView.builder(
                      itemCount: archerList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 0.2,
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              color: (_selectedIndex != null &&
                                      _selectedIndex == index)
                                  ? Colors.yellowAccent
                                  : Colors.white54,
                            ),
                            child: ListTile(
                              leading: CircleAvatar(
                                child: Text(archerList[index]["currentScore"]),
                                backgroundColor: Colors.green,
                              ),
                              title: Text(archerList[index]["name"]),
                              trailing: Text(archerList[index]["totalScore"]),
                              onTap: () {
                                setState(() {
                                  onclick = !onclick;
                                  _selectedIndex = index;
                                });
                              },
                            ),
                          ),
                        );
                      })),
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
                  items: scoreOptionList
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
