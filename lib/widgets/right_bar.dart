import 'package:bmi_calc/constants/app_constants.dart';
import 'package:flutter/material.dart';

class RightBar extends StatelessWidget {

  final double barWidth;

  const RightBar({Key key, @required this.barWidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 30,
          width: barWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(70),
              bottomRight: Radius.circular(70),
              
            ),
            color: accentHexColor,
          ),
        )
      ],
    );
  }
}