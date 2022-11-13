
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_pay/constants.dart';


class GenioRoundedButton extends StatelessWidget {
  const GenioRoundedButton({
    Key? key,
    required this.onPressed,
    this.text = '',
    this.color = kButtonYellowColor,
    this.textStyle,
    this.minWidth = 200.0,
    this.height = 40.0,
    this.borderColor = kButtonYellowColor,
  }) : super(key: key);

  final void Function()? onPressed;
  final String text;
  final Color color;
  final TextStyle? textStyle;
  final double minWidth;
  final double height;
  final Color borderColor;


  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      borderRadius: BorderRadius.circular(8.0.r),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0.r),
          border: Border.all(color: borderColor),
          color: color,
        ),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: minWidth.w,
          height: height.h,
          child: Text(
            text,
            style: textStyle,
          ),
        ),
      ),
    );
  }
}
