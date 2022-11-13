import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_pay/constants.dart';
import 'package:g_pay/widget/common/svg_icon.dart';

class VerificationIconList extends StatelessWidget {
  const VerificationIconList({
    Key? key,
    required this.assetName,
    required this.text,
    this.hasLearnMore = true,
  }) : super(key: key);
  
  final String assetName;
  final String text;
  final bool hasLearnMore;

  @override
  Widget build(BuildContext context) {
    final themeColor = Theme.of(context);
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: kGenioGreenLightColor,
          child: GSvgIcon(
            assetName,
            size: 24.r,
            color: kBlackColor,
          ),
        ),
        SizedBox(width: 16.w),
        Expanded(
          child: RichText(
            text: TextSpan(
                text: text,
                style: kRegularFontStyle.copyWith(
                  fontSize: kSize16.sp,
                  color: themeColor.textTheme.headline5?.color,
                  letterSpacing: 0.22,
                ),
                children: [
                  if(hasLearnMore) TextSpan(
                    text: '\nlearn more',
                    style: kRegularFontStyle.copyWith(
                      fontSize: kSize16.sp,
                      color: themeColor.textTheme.bodyText1?.color,
                      decoration: TextDecoration.underline,
                      letterSpacing: 0.22,
                    ),
                  ),
                ]
            ),
          ),
        ),
      ],
    );
  }
}
