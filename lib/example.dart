import 'package:flutter/material.dart';
import 'package:badgelevel/badgelevel.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: BadgeDesign(
        backColor: Colors.red,
        backRadius: 25,
        circleBorderColor: Colors.blueAccent,
        circleRadius: 20,
        frontRadius: 25,
        imageIcon: Icon(Icons.security),
        levelName: "Gold",
      ),
    );
  }
}
