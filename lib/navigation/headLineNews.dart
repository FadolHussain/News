import 'package:flutter/material.dart';
import 'package:flutter_home/home_tab/favourites.dart';
import 'package:flutter_home/home_tab/popular.dart';
import 'package:flutter_home/home_tab/whatsNew.dart';
import 'package:flutter_home/shared_ui/navigation.dart';

class HeadLineNews extends StatefulWidget {
  @override
  _HeadLineNewsState createState() => _HeadLineNewsState();
}

class _HeadLineNewsState extends State<HeadLineNews> with TickerProviderStateMixin{
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController( initialIndex: 0, length: 3, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Head Line News"),
        actions: [

          IconButton(icon: Icon(Icons.search_rounded), onPressed: (){}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: (){})
        ],

        bottom: TabBar(
          indicatorColor: Colors.white,
          tabs: [
            Tab( text: "WHAT'S NEW",),
            Tab( text: "POPULAR",),
            Tab( text: "FAVOURITES",)
          ], controller: _tabController,),

      ),
      drawer: Navigation(),
      body: Center(
          child: TabBarView(children: [
            Favourites(),
            Popular(),
            Favourites()
          ], controller: _tabController,)
      ),
    );
  }
}
