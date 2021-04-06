import 'package:flutter/material.dart';
import 'package:flutter_home/shared_ui/navigation.dart';
class TwitterFeed extends StatefulWidget {
  @override
  _TwitterFeedState createState() => _TwitterFeedState();
}

class _TwitterFeedState extends State<TwitterFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Twitter Feed"),
        centerTitle: false,
        actions: [
          IconButton(icon:Icon(Icons.search_rounded) , onPressed: () {} ),
        ],
      ),
      drawer: Navigation(),
      body: ListView.builder(
        padding: EdgeInsets.all(8),
        itemBuilder: (context , position){
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Card(
            child: Column(
              children: [
                _cardHeader(),
                _cardBody(),
                _drawLine(),
                _cardFooter()
              ],
            ),
          ),
        );
      },
      itemCount: 20,
      ),
    );
  }
  Widget _cardHeader(){
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: CircleAvatar(
            backgroundColor: Colors.deepOrange,
            radius: 24,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("Christina Meyers",
                  style: TextStyle(
                      fontWeight: FontWeight.w600
                  ),
                ),
                SizedBox(width: 12,),
                Text("@ch_meyers",
                  style: TextStyle(
                      color: Colors.blueGrey
                  ),
                )
              ],
            ),
            SizedBox(height: 8,),
            Text(
              "Fri, 12 May 2017 . 14.30",
              style: TextStyle(
                  color:  Colors.blueGrey
              ),
            )
          ],
        )
      ],
    );
  }
  Widget _cardBody(){
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16, bottom: 8),
      child: Text(
        "we also ralk the futture of robot the advance we also ralk the  of robot the advance",
      style: TextStyle(
        color: Colors.black,
      fontSize: 18,
        fontWeight: FontWeight.w600,
        height: 1.2
      ),
      ),
    );
  }
  Widget _cardFooter(){
    return Padding(
      padding: const EdgeInsets.all(14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                  icon: Icon(Icons.repeat) ,
                  color: Colors.deepOrange,
                  onPressed: () {} ),
              Text(
                "25",
                style: TextStyle(
                    color: Colors.blueGrey ,
                    fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
          Row(
            children: [
              FlatButton(
                  onPressed: (){},
                  child: Text(
                    "SHARE",
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 14,
                        fontWeight: FontWeight.w600
                    ),
                  )
              ),
              FlatButton(
                  onPressed: (){},
                  child: Text(
                    "OPEN",
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 14,
                        fontWeight: FontWeight.w600
                    ),
                  )
              )
            ],
          )
        ],
      ),
    );
  }
}

Widget _drawLine() {
  return Container(
    height: 1,
    color: Colors.blueGrey,
    margin: EdgeInsets.only(top: 16),
  );
}
