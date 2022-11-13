import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_pay/constants.dart';
import 'package:g_pay/widget/common/svg_icon.dart';

class CardIconAction extends StatelessWidget {
  const CardIconAction({
    Key? key,
    this.last = false,
    required this.text,
    required this.assetName,
  }) : super(key: key);

  final bool last;
  final String text;
  final String assetName;

  @override
  Widget build(BuildContext context) {
    final themeColor = Theme.of(context);
    return Padding(
      padding: last ? EdgeInsets.zero : EdgeInsets.only(right: Constant.kSize(MediaQuery.of(context).size.height, 16.0.h, 32.0.h)),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(14.0.r),
            decoration: BoxDecoration(
              color: kGenioGreenColor,
              borderRadius: BorderRadius.circular(20.0.r),
            ),
            child: GSvgIcon(
              assetName,
              size: 19.r,
              color: kWhiteColor,
            ),
          ),
          SizedBox(height: 4.0.h),
          Text(
            text,
            style: kRegularFontStyle.copyWith(
                fontSize: kSize12.sp,
                color: themeColor.textTheme.bodyText1?.color,
                letterSpacing: 0.5
            ),
          ),
        ],
      ),
    );
  }
}
