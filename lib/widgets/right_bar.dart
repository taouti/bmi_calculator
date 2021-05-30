import 'package:flutter/material.dart';
import 'package:flutter_app1/constants/app_constants.dart';

class RightBar extends StatelessWidget {
  final List<double> barWidth;
  final double spacing;
  const RightBar({Key key, @required this.barWidth, @required this.spacing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: spacing),
              height: 25,
              width: barWidth[0],
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color: accentHexColor),
            ),
            Container(
              margin: EdgeInsets.only(bottom: spacing),
              height: 25,
              width: barWidth[1],
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color: accentHexColor),
            ),
            Container(
              margin: EdgeInsets.only(bottom: spacing),
              height: 25,
              width: barWidth[2],
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color: accentHexColor),
            ),
          ],
        ),
      ],
    );
  }
}
