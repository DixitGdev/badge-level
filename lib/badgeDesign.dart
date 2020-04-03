import 'package:flutter/material.dart';

class BadgeDesign extends StatefulWidget {
  final title;
  final levelName;
  final imageIcon;
  final frontColor;
  final backColor;
  final circleRadius;
  final circleBorderColor;
  final frontRadius;
  final backRadius;

  const BadgeDesign(
      {Key key,
      this.title,
      this.levelName,
      this.imageIcon,
      this.frontColor,
      this.backColor,
      this.frontRadius,
      this.backRadius,
      this.circleBorderColor,
      this.circleRadius})
      : super(key: key);

  @override
  _BadgeDesignState createState() => _BadgeDesignState();
}

class _BadgeDesignState extends State<BadgeDesign> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            height: 150,
            width: 150,
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}
