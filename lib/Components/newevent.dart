import 'package:flutter/material.dart';
class NewEvent extends StatelessWidget {
  NewEvent({this.eventTime,this.player1name,this.player1score,this.player2name,this.player2score});
  DateTime now = DateTime.now();
  final String player1name;
  final int player1score;
  final String player2name;
  final int player2score;
  final int eventTime;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,

          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
              color: Colors.white70,
            ),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,

              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,

                  children: [

                    TextButton(onPressed: (){},
                      child: Row(

                        children: [
                          Icon(Icons.close,color: Colors.red,),
                          Text("Delete",style: TextStyle(color: Colors.white),),
                        ],
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.grey,


                      ),)
                  ],

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("New Event",
                      style: TextStyle(
                        color: Colors. black,
                        fontSize: 40,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 20,),
                    IconButton(icon: Icon(Icons.edit_outlined),onPressed: (){},color: Colors.white,iconSize: 40,),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(now.day.toString()+"."+now.month.toString()+"."+now.year.toString(),style: TextStyle(
                        fontSize: 20
                    ),),
                    SizedBox(width: 10,),
                    Text(now.hour.toString()+":"+now.minute.toString(),style: TextStyle(
                        fontSize: 20
                    ),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("(This is a running from last $eventTime minutes)"),
                  ],
                ),
                Container(
                  height: 40,
                  width: 300,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      Table(
                        border: TableBorder.all(),
                        children: [
                          TableRow(children: [
                            Center(child: Text(player1name)),
                            Center(child: Text(player1score.toString())),
                          ]),
                          TableRow(children: [
                            Center(child: Text(player2name)),
                            Center(child: Text(player2score.toString())),
                          ]),

                        ],),

                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(onPressed: (){}, child: Text("Continue the Event",style: TextStyle(color: Colors.white),),
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.lightGreen
                      ),),
                  ],),

              ],
            ),


          ),
        ),
      ],
    );
  }
}