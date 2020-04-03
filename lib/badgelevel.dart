library badgelevel;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BadgeDesign());
}

class BadgeDesign extends StatelessWidget {
  final String title;
  final String levelName;
  final Icon imageIcon;
  final Color frontColor;
  final Color backColor;
  final double circleRadius;
  final Color circleBorderColor;
  final double frontRadius;
  final double backRadius; //BACK SQUARE RADIUS

  const BadgeDesign(
      {Key key,
      this.title,
      this.levelName,
      this.imageIcon,
      this.frontColor,
      this.backColor,
      this.circleRadius,
      this.circleBorderColor,
      this.frontRadius,
      this.backRadius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black38,
                            offset: Offset(2, 3),
                            blurRadius: 2)
                      ],
                      borderRadius: BorderRadius.circular(backRadius),
                      color: backColor,
                    ),
                    height: 180,
                    width: 180,
                  ),
                  Transform.rotate(
                    angle: 7,
                    child: Container(
                      child: Transform.rotate(
                        angle: 18.113,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(bottom: 11),
                              child: SmallCircle(
                                  circleBorderColor: circleBorderColor,
                                  circleRadius: circleRadius),
                            ),
                            Text(
                              "$title",
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 20,
                                  color: Colors.black87),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(right: 29),
                                  child: SmallCircle(
                                      circleBorderColor: circleBorderColor,
                                      circleRadius: circleRadius),
                                ),
                                Icon(
                                  Icons.account_circle,
                                  size: 80,
                                  color: Colors.amber,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 31),
                                  child: SmallCircle(
                                      circleBorderColor: circleBorderColor,
                                      circleRadius: circleRadius),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 26),
                              child: SmallCircle(
                                  circleBorderColor: circleBorderColor,
                                  circleRadius: circleRadius),
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black38,
                              offset: Offset(2, 3),
                              blurRadius: 2)
                        ],
                        borderRadius: BorderRadius.circular(frontRadius),
                        color: frontColor,
                      ),
                      height: 180,
                      width: 180,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SmallCircle extends StatelessWidget {
  const SmallCircle({
    Key key,
    @required this.circleBorderColor,
    @required this.circleRadius,
  }) : super(key: key);

  final Color circleBorderColor;
  final double circleRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      decoration: BoxDecoration(
          border: Border.all(color: circleBorderColor, width: 2),
          color: Colors.white,
          borderRadius: BorderRadius.circular(circleRadius)),
    );
  }
}
