import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_pay/constants.dart';

class GIndicator extends StatelessWidget {
  const GIndicator({
    Key? key,
    this.selected = false,
    this.radius = 8.0,
  }) : super(key: key);

  final bool selected;
  final double radius;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: selected ? EdgeInsets.symmetric(horizontal: 8.0.w) : null,
      height: (selected? (radius+4) : radius).r,
      width: (selected? (radius+4) : radius).r,
      decoration: const BoxDecoration(
        color: kGenioGreenColor,
        shape: BoxShape.circle,
      ),
    );
  }
}
