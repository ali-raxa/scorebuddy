import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SelectScorePad extends StatefulWidget {
  @override
  _SelectScorePadState createState() => _SelectScorePadState();
}

class _SelectScorePadState extends State<SelectScorePad> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 1,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
              color: Colors.white70,
            ),
            width: double.infinity,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Container(child: Column(
                      children: [Text("Arslan",style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold
                      ),),
                        Container(
                          width: 80,
                          color: Colors.white54,child: Center(child: Text("vs.")),),
                        Text("Target 1",style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w400
                        ),),],
                    ),),
                    IconButton(icon: Icon(CupertinoIcons.speaker_2_fill),onPressed: (){},color: Colors.white,iconSize: 40,),
                  ],),
                ),
                Column(children: [
                  Row(children: [
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        height: 55.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0),
                          child: TextButton(
                            onPressed: (){},
                            child: Text(
                              '14',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        height: 55.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0),
                          child: TextButton(
                            onPressed: (){},
                            child: Text(
                              '8',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        height: 55.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0),
                          child: TextButton(
                            onPressed: (){},
                            child: Text(
                              '20',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        height: 55.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0),
                          child: TextButton(
                            onPressed: (){},
                            child: Text(
                              '0',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          height: 55.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0),
                            child: TextButton(
                              onPressed: (){},
                              child: Text(
                                '16',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          height: 55.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0),
                            child: TextButton(
                              onPressed: (){},
                              child: Text(
                                '10',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          height: 55.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0),
                            child: TextButton(
                              onPressed: (){},
                              child: Text(
                                '4',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          height: 55.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0),
                            child: TextButton(
                              onPressed: (){},
                              child: Icon(Icons.edit_outlined,color: Colors.black54,size: 30,),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
