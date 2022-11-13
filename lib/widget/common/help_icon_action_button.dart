import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_pay/constants.dart';
import 'package:g_pay/widget/common/g_button_detector.dart';
import 'package:g_pay/widget/common/svg_icon.dart';

class HelpIconActionButton extends StatelessWidget {
  const HelpIconActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GButtonDetector(
      onPressed: null,
      child: Padding(
        padding: EdgeInsets.only(right: 24.0.w),
        child: GSvgIcon(
          'question_circle.svg',
          size: 20.r,
          color: kBlackColor,
        ),
      ),
    );
  }
}
