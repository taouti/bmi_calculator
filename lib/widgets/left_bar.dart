import 'package:flutter/material.dart';
import 'package:flutter_app1/constants/app_constants.dart';

class LeftBar extends StatelessWidget {
  final List<double> barWidth;
  final double spacing;
  const LeftBar({Key key, @required this.barWidth, @required this.spacing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: spacing),
              height: 25,
              width: barWidth[0],
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                  color: accentHexColor),
            ),
            Container(
              margin: EdgeInsets.only(bottom: spacing),
              height: 25,
              width: barWidth[1],
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                  color: accentHexColor),
            ),
            Container(
              //margin: EdgeInsets.only(bottom: spacing),
              height: 25,
              width: barWidth[2],
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                  color: accentHexColor),
            ),
          ],
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.end,
    );
  }
}
