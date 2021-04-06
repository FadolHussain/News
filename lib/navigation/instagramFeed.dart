import 'package:flutter/material.dart';
import 'package:flutter_home/shared_ui/navigation.dart';
class InstagramFeed extends StatefulWidget {
  @override
  _InstagramFeedState createState() => _InstagramFeedState();
}

class _InstagramFeedState extends State<InstagramFeed> {
  TextStyle _hashTagStyle = TextStyle(
    color: Colors.deepOrange,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Instagram Feed"),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    _drawHeader(),
                    _drawTitle(),
                    _drawHashTags(),
                    _drawBody(),
                    _drawFooter()
                ],
              ),
            ),
          );
        },
        itemCount: 20,
      ),
    );
  }
  Widget _drawHeader(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
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
                  Text("Christina Meyers",
                    style: TextStyle(
                        fontWeight: FontWeight.w600
                    ),
                  ),
                  SizedBox(width: 12,),
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
        ),
        Row(
          children: [
            IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {} ,
              color: Colors.grey,
              iconSize: 30,
            ),
            Transform.translate(
              offset: Offset(-8 , 0),
              child: Text(
                "25",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18
                ),
              ),
            )
          ],
        )
      ],
    );
  }
  Widget _drawTitle(){
    return Padding(
        padding: EdgeInsets.only(bottom: 12, left: 16, right: 16),
            child: Text(
              "we also the of robot the advance we also the  of robot the advance",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18
              ),
            ),
    );
  }
  Widget _drawHashTags(){
    return Container(
      child: Wrap(
        children: [
          FlatButton(
              onPressed: (){},
              child: Text(
                "#advance",
                style: _hashTagStyle,
              )
          ),
          FlatButton(
              onPressed: (){},
              child: Text(
                "#FadolHussain",
                style: _hashTagStyle,
              )
          )
        ],
      ),
    );
  }
  Widget _drawBody(){
    return SizedBox(
      width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.30,
        child: Image(
          image: ExactAssetImage(
              "assets/images/gg3.jpg"
          ),
        fit: BoxFit.cover,
        )
    );
  }
  Widget _drawFooter(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FlatButton(onPressed: (){} ,  child: Text("10 COMMENT", style: _hashTagStyle,)),
        Row(
          children: [
            FlatButton(onPressed: (){} ,  child: Text("SHARE", style: _hashTagStyle,)),
            FlatButton(onPressed: (){} ,  child: Text("OPEN", style:  _hashTagStyle,)),
          ],
        )
      ],
    );
  }
}
