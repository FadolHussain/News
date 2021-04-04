

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_home/home_tab/popular.dart';
class WhatsNew extends StatefulWidget {
  @override
  WhatsNewState createState() => WhatsNewState();
}

class WhatsNewState extends State<WhatsNew> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _drawHeader(),
            _drawTopStories(),

          ],
        )
    );
  }

  Widget _drawHeader() {
    TextStyle _headerTitle = TextStyle(
      color: Colors.white,
      fontSize: 22,
      fontWeight: FontWeight.w600,
    );
    TextStyle _headerDescription = TextStyle(
        color: Colors.white,
        fontSize: 16
    );
    return Container(
        width: MediaQuery
            .of(context)
            .size
            .width,
        height: MediaQuery
            .of(context)
            .size
            .height * 0.25,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage("assets/images/gg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 48, right: 48),
                child: Text("How Terriers & Royals Gatecreashed Final",
                  style: _headerTitle,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur elit sad elumog",
                  style: _headerDescription,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        )
    );
  }

  Widget _drawTopStories() {
    return Container(
      color: Colors.grey.shade300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 16),
            child: _drawSectionTitle("Top Stories"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                children: <Widget>[
                  _drawSingleRow(),
                  _drawDivider(),
                  _drawSingleRow(),
                  _drawDivider(),
                  _drawSingleRow(),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, bottom: 8 , top: 8),
                  child: _drawSectionTitle("Recent Updates"),
                ),
                _drawRecentUpdateCard(),
                _drawRecentUpdateCard(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _drawDivider(){
    return Container(
      height: 2,
      width: double.infinity,
      color: Colors.grey,
    );
  }
  Widget _drawSingleRow(){
   return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        children: <Widget>[
          SizedBox(
            child:
            Image(image: ExactAssetImage("assets/images/gg.jpg"),
              fit: BoxFit.cover,
            ),
            width: 100,
            height: 100,
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              children: [
                Text("The world Glodal warming annual sumit",
                  maxLines: 2,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment
                      .spaceBetween,
                  children: [
                    Text("Michel Adams"),
                    Row(
                      children: [
                        Icon(Icons.timer),
                        Text("15 min"),
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
  Widget _drawSectionTitle(String title){
    return Text(
      title,
      style: TextStyle(color: Colors.black54,
          fontSize: 16,
          fontWeight: FontWeight.bold
      ),
    );
  }

  Widget _drawRecentUpdateCard() {
    return Card(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage("assets/images/gg.jpg"),
                fit: BoxFit.cover
              )
            ),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.25,
          ),
          Container(
            padding: EdgeInsets.only(left: 20 , right: 20 , top: 4, bottom: 4),
            decoration: BoxDecoration(
              color: Colors.deepOrange.shade900,
              borderRadius: BorderRadius.circular(6)
            ),
            child: Text("SPORT" , style: TextStyle(color: Colors.white),),
          )
        ],
      ),
    );
  }
}

