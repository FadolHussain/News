import 'package:flutter/material.dart';
import 'homePage.dart';
import 'utilties/themeApp.dart';
void main() {
  runApp(Home());
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeApp.themeApp,
    );
  }
}
