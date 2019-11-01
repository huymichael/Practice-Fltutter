import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants/basic.contanst.dart';

class IconContainer extends StatelessWidget {
  final String label;
  final IconData icon;

  IconContainer({this.icon, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
