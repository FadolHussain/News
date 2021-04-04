
import 'dart:math';
import 'package:flutter/material.dart';
class Favourites extends StatefulWidget {
  @override
  _FavouritesState createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {

  List<Color> colorsList = [
    Colors.deepPurpleAccent,
    Colors.green,
    Colors.amber,
    Colors.red,
    Colors.pink,
    Colors.lightBlue,
    Colors.deepOrangeAccent,
    Colors.indigo
  ];

  Random random = Random();

  Color _getRandomColor(){
    return colorsList[ random.nextInt(colorsList.length)];
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, position){
          return Card(
            child: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  _authorRow(),
                  SizedBox(height: 16,),
                  _newsItemRow()
                ],
              ),
            ),
          );
        }, itemCount: 20,
    );
  }
  Widget _authorRow(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage
                      ("assets/images/gg2.jpg"),
                  fit: BoxFit.cover,
                ),
                    shape: BoxShape.circle,
              ),
              width: 40,
              height: 40,
              margin: EdgeInsets.only(right: 16),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    "Michael Adams",
                    style: TextStyle(
                    color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600

                  ),
                ),
                SizedBox(height: 8,),
                Row(
                  children: [
                    Text(
                      "15 mit" ,
                      style: TextStyle(
                          color: Colors.blueGrey
                      ),
                    ),
                    Text("Life Style" ,
                        style: TextStyle(
                        color: _getRandomColor() ,
                        fontSize: 14 ,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
        IconButton(icon: Icon(Icons.bookmark_border) ,
            onPressed: () {},
            color: Colors.blueGrey,
          )
      ],
    );
  }
  Widget _newsItemRow(){
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: ExactAssetImage
                    ("assets/images/gg.jpg"),
                  fit: BoxFit.cover,
              ),
          ),
          width: 140,
          height: 120,
          margin: EdgeInsets.only(right: 16),
        ),
        Expanded(
          child: Column(
            children: [
              Text(
                "Tech tent: Old phones and safe social",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                  fontWeight: FontWeight.w600
                ),
              ),
              SizedBox(height: 8,),
              Text(
                "we also talk about the  of  as the robots  we also talk about the  of  as the robots ",
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 16,
                  height: 1.5
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
