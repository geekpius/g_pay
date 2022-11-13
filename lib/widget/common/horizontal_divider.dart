import 'package:flutter/material.dart';
import 'package:g_pay/constants.dart';

class HorizontalDivider extends StatelessWidget {
  const HorizontalDivider({
    Key? key,
    this.color = kGenioGreenLightColor,
    this.thickness = 2.0,
    this.height,
  }) : super(key: key);

  final Color? color;
  final double? thickness;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: color,
      thickness: thickness,
      height: height,
    );
  }
}
