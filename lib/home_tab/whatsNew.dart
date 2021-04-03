import 'package:flutter/material.dart';

class WhatsNew extends StatefulWidget {
  @override
  _WhatsNewState createState() => _WhatsNewState();
}

class _WhatsNewState extends State<WhatsNew> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
      children: <Widget>[
        Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage("assets/images/gg.jpg") ,
                fit: BoxFit.cover,
              )
            )
        )
      ],
    )
    );
  }
}
