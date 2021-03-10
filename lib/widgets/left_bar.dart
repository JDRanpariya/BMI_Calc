import 'package:bmi_calc/constants/app_constants.dart';
import 'package:flutter/material.dart';

class LeftBar extends StatelessWidget {

  final double barWidth;

  const LeftBar({Key key, @required this.barWidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 30,
          width: barWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(70),
              bottomLeft: Radius.circular(70),
              
            ),
            color: accentHexColor,
          ),
        )
      ],
    );
  }
}