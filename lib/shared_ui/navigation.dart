import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_home/models/navMenu.dart';
import 'package:flutter_home/navigation/headLineNews.dart';
import 'package:flutter_home/homePage.dart';
import 'package:flutter_home/navigation/instagramFeed.dart';
import 'package:flutter_home/navigation/twitterFeed.dart';
import 'package:flutter_home/navigation/instagramFeed.dart';
class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {

  List<NavMenuItem> navigationMenu = [
    NavMenuItem ( "Explore" , () => HomePage()),
    NavMenuItem("Head line News", () => HeadLineNews()),
    NavMenuItem("Twitter Feed", () => TwitterFeed()),
    NavMenuItem("Instagram Feed",() => InstagramFeed())
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding:EdgeInsets.only(top: 80, left: 25) ,
        child: ListView.builder(
            itemBuilder: ( context, position){
          return ListTile(
            title: Text(navigationMenu[position].title, style: TextStyle(color: Colors.black, fontSize: 20),),
            trailing: Icon(Icons.chevron_right, color: Colors.blueGrey,),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return navigationMenu[position].destination();
              } ));
            },
          );
        },
        itemCount: navigationMenu.length,
        ),
      ),
    );
  }
}